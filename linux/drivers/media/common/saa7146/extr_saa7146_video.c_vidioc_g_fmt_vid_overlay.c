
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_4__ {int win; } ;
struct saa7146_vv {TYPE_2__ ov; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_fmt_vid_overlay(struct file *file, void *fh, struct v4l2_format *f)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct saa7146_vv *vv = dev->vv_data;

 f->fmt.win = vv->ov.win;
 return 0;
}
