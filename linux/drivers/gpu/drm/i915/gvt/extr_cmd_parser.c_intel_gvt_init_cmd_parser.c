
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int dummy; } ;


 int init_cmd_table (struct intel_gvt*) ;
 int intel_gvt_clean_cmd_parser (struct intel_gvt*) ;

int intel_gvt_init_cmd_parser(struct intel_gvt *gvt)
{
 int ret;

 ret = init_cmd_table(gvt);
 if (ret) {
  intel_gvt_clean_cmd_parser(gvt);
  return ret;
 }
 return 0;
}
