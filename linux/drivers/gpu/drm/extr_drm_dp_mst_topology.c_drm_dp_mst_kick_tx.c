
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_topology_mgr {int tx_work; } ;


 int queue_work (int ,int *) ;
 int system_long_wq ;

__attribute__((used)) static void drm_dp_mst_kick_tx(struct drm_dp_mst_topology_mgr *mgr)
{
 queue_work(system_long_wq, &mgr->tx_work);
}
