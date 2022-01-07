
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int dummy; } ;


 int clean_cmd_table (struct intel_gvt*) ;

void intel_gvt_clean_cmd_parser(struct intel_gvt *gvt)
{
 clean_cmd_table(gvt);
}
