
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct f54_data {int format; } ;


 struct f54_data* video_drvdata (struct file*) ;

__attribute__((used)) static int rmi_f54_vidioc_fmt(struct file *file, void *priv,
         struct v4l2_format *f)
{
 struct f54_data *f54 = video_drvdata(file);

 f->fmt.pix = f54->format;

 return 0;
}
