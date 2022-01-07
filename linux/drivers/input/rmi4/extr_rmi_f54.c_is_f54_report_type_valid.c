
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f54_data {int capabilities; } ;
typedef enum rmi_f54_report_type { ____Placeholder_rmi_f54_report_type } rmi_f54_report_type ;




 int F54_CAP_IMAGE16 ;
 int F54_CAP_IMAGE8 ;





__attribute__((used)) static bool is_f54_report_type_valid(struct f54_data *f54,
         enum rmi_f54_report_type reptype)
{
 switch (reptype) {
 case 132:
  return f54->capabilities & F54_CAP_IMAGE8;
 case 133:
 case 129:
  return f54->capabilities & F54_CAP_IMAGE16;
 case 128:
  return f54->capabilities & F54_CAP_IMAGE16;
 case 131:
 case 130:
  return 1;
 default:
  return 0;
 }
}
