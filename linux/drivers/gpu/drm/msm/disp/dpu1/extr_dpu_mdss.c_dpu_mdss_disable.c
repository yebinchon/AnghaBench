
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mdss {int dummy; } ;
struct dss_module_power {int num_clk; int clk_config; } ;
struct dpu_mdss {int num_paths; int * path; struct dss_module_power mp; } ;


 int DPU_ERROR (char*,int) ;
 int icc_set_bw (int ,int ,int ) ;
 int msm_dss_enable_clk (int ,int ,int) ;
 struct dpu_mdss* to_dpu_mdss (struct msm_mdss*) ;

__attribute__((used)) static int dpu_mdss_disable(struct msm_mdss *mdss)
{
 struct dpu_mdss *dpu_mdss = to_dpu_mdss(mdss);
 struct dss_module_power *mp = &dpu_mdss->mp;
 int ret, i;

 ret = msm_dss_enable_clk(mp->clk_config, mp->num_clk, 0);
 if (ret)
  DPU_ERROR("clock disable failed, ret:%d\n", ret);

 for (i = 0; i < dpu_mdss->num_paths; i++)
  icc_set_bw(dpu_mdss->path[i], 0, 0);

 return ret;
}
