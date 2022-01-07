
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int rmi_f54_set_input (int ,unsigned int) ;
 int video_drvdata (struct file*) ;

__attribute__((used)) static int rmi_f54_vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 return rmi_f54_set_input(video_drvdata(file), i);
}
