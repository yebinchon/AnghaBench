
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux {int dummy; } ;


 int DP_BRANCH_ID ;
 int drm_dp_dpcd_read (struct drm_dp_aux*,int ,char*,int) ;

int drm_dp_downstream_id(struct drm_dp_aux *aux, char id[6])
{
 return drm_dp_dpcd_read(aux, DP_BRANCH_ID, id, 6);
}
