
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {scalar_t__ type; int pixelformat; scalar_t__ index; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pixelformat; } ;
struct f54_data {TYPE_1__ format; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct f54_data* video_drvdata (struct file*) ;

__attribute__((used)) static int rmi_f54_vidioc_enum_fmt(struct file *file, void *priv,
       struct v4l2_fmtdesc *fmt)
{
 struct f54_data *f54 = video_drvdata(file);

 if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (fmt->index)
  return -EINVAL;

 fmt->pixelformat = f54->format.pixelformat;

 return 0;
}
