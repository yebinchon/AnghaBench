
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int denominator; int numerator; } ;
struct v4l2_frmivalenum {scalar_t__ index; scalar_t__ pixel_format; scalar_t__ width; scalar_t__ height; TYPE_2__ discrete; int type; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; } ;
struct sur40_state {TYPE_1__ pix_fmt; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 scalar_t__ V4L2_PIX_FMT_GREY ;
 scalar_t__ V4L2_TCH_FMT_TU08 ;
 struct sur40_state* video_drvdata (struct file*) ;

__attribute__((used)) static int sur40_vidioc_enum_frameintervals(struct file *file, void *priv,
         struct v4l2_frmivalenum *f)
{
 struct sur40_state *sur40 = video_drvdata(file);

 if ((f->index > 0) || ((f->pixel_format != V4L2_TCH_FMT_TU08)
  && (f->pixel_format != V4L2_PIX_FMT_GREY))
  || (f->width != sur40->pix_fmt.width)
  || (f->height != sur40->pix_fmt.height))
  return -EINVAL;

 f->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 f->discrete.denominator = 60;
 f->discrete.numerator = 1;
 return 0;
}
