
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_manager {int master_dsi_link_id; void* is_sync_needed; void* is_dual_dsi; } ;
struct device_node {int dummy; } ;


 struct msm_dsi_manager msm_dsim_glb ;
 void* of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static int dsi_mgr_parse_dual_dsi(struct device_node *np, int id)
{
 struct msm_dsi_manager *msm_dsim = &msm_dsim_glb;




 if (!msm_dsim->is_dual_dsi)
  msm_dsim->is_dual_dsi = of_property_read_bool(
      np, "qcom,dual-dsi-mode");

 if (msm_dsim->is_dual_dsi) {
  if (of_property_read_bool(np, "qcom,master-dsi"))
   msm_dsim->master_dsi_link_id = id;
  if (!msm_dsim->is_sync_needed)
   msm_dsim->is_sync_needed = of_property_read_bool(
     np, "qcom,sync-dual-dsi");
 }

 return 0;
}
