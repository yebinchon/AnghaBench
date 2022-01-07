
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct sur40_state {int pix_fmt; } ;
struct file {int dummy; } ;


 struct sur40_state* video_drvdata (struct file*) ;

__attribute__((used)) static int sur40_vidioc_g_fmt(struct file *file, void *priv,
       struct v4l2_format *f)
{
 struct sur40_state *sur40 = video_drvdata(file);

 f->fmt.pix = sur40->pix_fmt;
 return 0;
}
