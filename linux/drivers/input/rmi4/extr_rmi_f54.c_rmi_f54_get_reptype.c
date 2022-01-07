
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f54_data {int* inputs; } ;
typedef enum rmi_f54_report_type { ____Placeholder_rmi_f54_report_type } rmi_f54_report_type ;


 unsigned int F54_MAX_REPORT_TYPE ;
 int F54_REPORT_NONE ;

__attribute__((used)) static enum rmi_f54_report_type rmi_f54_get_reptype(struct f54_data *f54,
      unsigned int i)
{
 if (i >= F54_MAX_REPORT_TYPE)
  return F54_REPORT_NONE;

 return f54->inputs[i];
}
