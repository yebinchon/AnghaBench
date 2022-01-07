
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_topology_mgr {int pbn_div; } ;


 int DIV_ROUND_UP (int,int ) ;
 int ENOSPC ;

int drm_dp_find_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr,
      int pbn)
{
 int num_slots;

 num_slots = DIV_ROUND_UP(pbn, mgr->pbn_div);


 if (num_slots > 63)
  return -ENOSPC;
 return num_slots;
}
