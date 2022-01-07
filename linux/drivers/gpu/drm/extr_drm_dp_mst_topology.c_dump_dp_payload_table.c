
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_topology_mgr {int aux; } ;


 int DP_PAYLOAD_TABLE_SIZE ;
 scalar_t__ DP_PAYLOAD_TABLE_UPDATE_STATUS ;
 int drm_dp_dpcd_read (int ,scalar_t__,char*,int) ;

__attribute__((used)) static bool dump_dp_payload_table(struct drm_dp_mst_topology_mgr *mgr,
      char *buf)
{
 int i;

 for (i = 0; i < DP_PAYLOAD_TABLE_SIZE; i += 16) {
  if (drm_dp_dpcd_read(mgr->aux,
         DP_PAYLOAD_TABLE_UPDATE_STATUS + i,
         &buf[i], 16) != 16)
   return 0;
 }
 return 1;
}
