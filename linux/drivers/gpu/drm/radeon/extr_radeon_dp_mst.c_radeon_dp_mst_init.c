
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ base; struct drm_device* dev; } ;
struct TYPE_8__ {int * cbs; } ;
struct radeon_connector {TYPE_2__ base; TYPE_3__* ddc_bus; TYPE_4__ mst_mgr; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int aux; int has_aux; } ;


 int drm_dp_mst_topology_mgr_init (TYPE_4__*,struct drm_device*,int *,int,int,int ) ;
 int mst_cbs ;

int
radeon_dp_mst_init(struct radeon_connector *radeon_connector)
{
 struct drm_device *dev = radeon_connector->base.dev;

 if (!radeon_connector->ddc_bus->has_aux)
  return 0;

 radeon_connector->mst_mgr.cbs = &mst_cbs;
 return drm_dp_mst_topology_mgr_init(&radeon_connector->mst_mgr, dev,
         &radeon_connector->ddc_bus->aux, 16, 6,
         radeon_connector->base.base.id);
}
