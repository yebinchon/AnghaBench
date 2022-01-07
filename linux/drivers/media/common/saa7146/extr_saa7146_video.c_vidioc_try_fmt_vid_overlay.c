
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; } ;
struct v4l2_window {int clipcount; int field; TYPE_4__ w; } ;
struct TYPE_5__ {struct v4l2_window win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_6__ {int * base; } ;
struct saa7146_vv {TYPE_3__* standard; int * ov_fmt; TYPE_2__ ov_fb; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_7__ {int h_max_out; int v_max_out; } ;


 int DEB_D (char*,...) ;
 int DEB_EE (char*,struct saa7146_dev*) ;
 int EINVAL ;

 int V4L2_FIELD_ANY ;




__attribute__((used)) static int vidioc_try_fmt_vid_overlay(struct file *file, void *fh, struct v4l2_format *f)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct saa7146_vv *vv = dev->vv_data;
 struct v4l2_window *win = &f->fmt.win;
 enum v4l2_field field;
 int maxw, maxh;

 DEB_EE("dev:%p\n", dev);

 if (((void*)0) == vv->ov_fb.base) {
  DEB_D("no fb base set\n");
  return -EINVAL;
 }
 if (((void*)0) == vv->ov_fmt) {
  DEB_D("no fb fmt set\n");
  return -EINVAL;
 }
 if (win->w.width < 48 || win->w.height < 32) {
  DEB_D("min width/height. (%d,%d)\n",
        win->w.width, win->w.height);
  return -EINVAL;
 }
 if (win->clipcount > 16) {
  DEB_D("clipcount too big\n");
  return -EINVAL;
 }

 field = win->field;
 maxw = vv->standard->h_max_out;
 maxh = vv->standard->v_max_out;

 if (V4L2_FIELD_ANY == field) {
  field = (win->w.height > maxh / 2)
   ? 129
   : 128;
  }
 switch (field) {
 case 128:
 case 130:
 case 131:
  maxh = maxh / 2;
  break;
 case 129:
  break;
 default:
  DEB_D("no known field mode '%d'\n", field);
  return -EINVAL;
 }

 win->field = field;
 if (win->w.width > maxw)
  win->w.width = maxw;
 if (win->w.height > maxh)
  win->w.height = maxh;

 return 0;
}
