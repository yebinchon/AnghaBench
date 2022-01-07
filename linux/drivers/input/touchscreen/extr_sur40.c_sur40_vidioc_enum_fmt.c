
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; scalar_t__ flags; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int pixelformat; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* sur40_pix_format ;

__attribute__((used)) static int sur40_vidioc_enum_fmt(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 if (f->index >= ARRAY_SIZE(sur40_pix_format))
  return -EINVAL;

 f->pixelformat = sur40_pix_format[f->index].pixelformat;
 f->flags = 0;
 return 0;
}
