
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; scalar_t__ capabilities; int name; int std; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_TOUCH ;
 int V4L2_STD_UNKNOWN ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int sur40_vidioc_enum_input(struct file *file, void *priv,
       struct v4l2_input *i)
{
 if (i->index != 0)
  return -EINVAL;
 i->type = V4L2_INPUT_TYPE_TOUCH;
 i->std = V4L2_STD_UNKNOWN;
 strlcpy(i->name, "In-Cell Sensor", sizeof(i->name));
 i->capabilities = 0;
 return 0;
}
