
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f54_data {int* inputs; } ;
typedef enum rmi_f54_report_type { ____Placeholder_rmi_f54_report_type } rmi_f54_report_type ;


 int F54_MAX_REPORT_TYPE ;
 int is_f54_report_type_valid (struct f54_data*,int) ;

__attribute__((used)) static void rmi_f54_create_input_map(struct f54_data *f54)
{
 int i = 0;
 enum rmi_f54_report_type reptype;

 for (reptype = 1; reptype < F54_MAX_REPORT_TYPE; reptype++) {
  if (!is_f54_report_type_valid(f54, reptype))
   continue;

  f54->inputs[i++] = reptype;
 }


}
