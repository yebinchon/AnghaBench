
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_module_power {int num_clk; struct dss_clk* clk_config; } ;
struct dss_clk {int clk_name; } ;
struct dpu_kms {struct dss_module_power mp; } ;


 int strcmp (int ,char*) ;

__attribute__((used)) static struct dss_clk *_dpu_kms_get_clk(struct dpu_kms *dpu_kms,
  char *clock_name)
{
 struct dss_module_power *mp = &dpu_kms->mp;
 int i;

 for (i = 0; i < mp->num_clk; i++) {
  if (!strcmp(mp->clk_config[i].clk_name, clock_name))
   return &mp->clk_config[i];
 }

 return ((void*)0);
}
