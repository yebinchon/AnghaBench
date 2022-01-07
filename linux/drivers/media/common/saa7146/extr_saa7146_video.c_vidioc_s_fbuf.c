
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytesperline; int width; int pixelformat; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; } ;
struct saa7146_vv {void* video_fh; struct v4l2_framebuffer ov_fb; struct saa7146_format* ov_fmt; } ;
struct saa7146_format {int flags; int depth; int pixelformat; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_RAWIO ;
 int DEB_D (char*,...) ;
 int DEB_EE (char*) ;
 int DEB_S (char*,char*) ;
 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int FORMAT_IS_PLANAR ;
 scalar_t__ IS_OVERLAY_ACTIVE (void*) ;
 int capable (int ) ;
 struct saa7146_format* saa7146_format_by_fourcc (struct saa7146_dev*,int ) ;

__attribute__((used)) static int vidioc_s_fbuf(struct file *file, void *fh, const struct v4l2_framebuffer *fb)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct saa7146_vv *vv = dev->vv_data;
 struct saa7146_format *fmt;

 DEB_EE("VIDIOC_S_FBUF\n");

 if (!capable(CAP_SYS_ADMIN) && !capable(CAP_SYS_RAWIO))
  return -EPERM;


 fmt = saa7146_format_by_fourcc(dev, fb->fmt.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;


 if (fmt->flags & FORMAT_IS_PLANAR)
  DEB_S("planar pixelformat '%4.4s' not allowed for overlay\n",
        (char *)&fmt->pixelformat);


 if (IS_OVERLAY_ACTIVE(fh) != 0) {
  if (vv->video_fh != fh) {
   DEB_D("refusing to change framebuffer information while overlay is active in another open\n");
   return -EBUSY;
  }
 }


 vv->ov_fb = *fb;
 vv->ov_fmt = fmt;

 if (vv->ov_fb.fmt.bytesperline < vv->ov_fb.fmt.width) {
  vv->ov_fb.fmt.bytesperline = vv->ov_fb.fmt.width * fmt->depth / 8;
  DEB_D("setting bytesperline to %d\n", vv->ov_fb.fmt.bytesperline);
 }
 return 0;
}
