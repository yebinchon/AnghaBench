
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int name; int type; int index; } ;
struct file {int dummy; } ;
struct f54_data {int dummy; } ;
typedef enum rmi_f54_report_type { ____Placeholder_rmi_f54_report_type } rmi_f54_report_type ;


 int EINVAL ;
 int F54_REPORT_NONE ;
 int V4L2_INPUT_TYPE_TOUCH ;
 int rmi_f54_get_reptype (struct f54_data*,int ) ;
 int * rmi_f54_report_type_names ;
 int strlcpy (int ,int ,int) ;
 struct f54_data* video_drvdata (struct file*) ;

__attribute__((used)) static int rmi_f54_vidioc_enum_input(struct file *file, void *priv,
         struct v4l2_input *i)
{
 struct f54_data *f54 = video_drvdata(file);
 enum rmi_f54_report_type reptype;

 reptype = rmi_f54_get_reptype(f54, i->index);
 if (reptype == F54_REPORT_NONE)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_TOUCH;

 strlcpy(i->name, rmi_f54_report_type_names[reptype], sizeof(i->name));
 return 0;
}
