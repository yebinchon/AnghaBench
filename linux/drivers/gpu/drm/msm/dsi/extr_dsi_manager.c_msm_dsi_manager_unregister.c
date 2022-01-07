
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_manager {int ** dsi; } ;
struct msm_dsi {size_t id; scalar_t__ host; } ;


 int msm_dsi_host_unregister (scalar_t__) ;
 struct msm_dsi_manager msm_dsim_glb ;

void msm_dsi_manager_unregister(struct msm_dsi *msm_dsi)
{
 struct msm_dsi_manager *msm_dsim = &msm_dsim_glb;

 if (msm_dsi->host)
  msm_dsi_host_unregister(msm_dsi->host);

 if (msm_dsi->id >= 0)
  msm_dsim->dsi[msm_dsi->id] = ((void*)0);
}
