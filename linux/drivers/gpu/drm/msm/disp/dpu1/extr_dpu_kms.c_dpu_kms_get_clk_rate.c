
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dss_clk {int clk; } ;
struct dpu_kms {int dummy; } ;


 int EINVAL ;
 struct dss_clk* _dpu_kms_get_clk (struct dpu_kms*,char*) ;
 int clk_get_rate (int ) ;

u64 dpu_kms_get_clk_rate(struct dpu_kms *dpu_kms, char *clock_name)
{
 struct dss_clk *clk;

 clk = _dpu_kms_get_clk(dpu_kms, clock_name);
 if (!clk)
  return -EINVAL;

 return clk_get_rate(clk->clk);
}
