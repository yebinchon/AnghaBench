
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_topology_mgr {int * funcs; int base; int * aux; int * dev; int payload_lock; int * proposed_vcpis; int * payloads; int destroy_connector_work; int work; } ;


 int drm_atomic_private_obj_fini (int *) ;
 int drm_dp_mst_topology_mgr_set_mst (struct drm_dp_mst_topology_mgr*,int) ;
 int flush_work (int *) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr)
{
 drm_dp_mst_topology_mgr_set_mst(mgr, 0);
 flush_work(&mgr->work);
 flush_work(&mgr->destroy_connector_work);
 mutex_lock(&mgr->payload_lock);
 kfree(mgr->payloads);
 mgr->payloads = ((void*)0);
 kfree(mgr->proposed_vcpis);
 mgr->proposed_vcpis = ((void*)0);
 mutex_unlock(&mgr->payload_lock);
 mgr->dev = ((void*)0);
 mgr->aux = ((void*)0);
 drm_atomic_private_obj_fini(&mgr->base);
 mgr->funcs = ((void*)0);
}
