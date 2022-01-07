
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_payload {scalar_t__ payload_state; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;



__attribute__((used)) static int drm_dp_destroy_payload_step2(struct drm_dp_mst_topology_mgr *mgr,
     int id,
     struct drm_dp_payload *payload)
{
 payload->payload_state = 0;
 return 0;
}
