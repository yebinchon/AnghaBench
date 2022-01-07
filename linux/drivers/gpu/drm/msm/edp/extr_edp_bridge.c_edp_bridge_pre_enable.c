
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_edp {int ctrl; } ;
struct edp_bridge {struct msm_edp* edp; } ;
struct drm_bridge {int dummy; } ;


 int DBG (char*) ;
 int msm_edp_ctrl_power (int ,int) ;
 struct edp_bridge* to_edp_bridge (struct drm_bridge*) ;

__attribute__((used)) static void edp_bridge_pre_enable(struct drm_bridge *bridge)
{
 struct edp_bridge *edp_bridge = to_edp_bridge(bridge);
 struct msm_edp *edp = edp_bridge->edp;

 DBG("");
 msm_edp_ctrl_power(edp->ctrl, 1);
}
