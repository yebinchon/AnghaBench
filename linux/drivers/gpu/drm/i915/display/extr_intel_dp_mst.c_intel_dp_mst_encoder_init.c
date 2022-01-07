
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * cbs; } ;
struct intel_dp {int can_mst; int aux; TYPE_3__ mst_mgr; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; struct intel_dp dp; } ;
struct drm_device {int dummy; } ;


 int drm_dp_mst_topology_mgr_init (TYPE_3__*,struct drm_device*,int *,int,int,int) ;
 int intel_dp_create_fake_mst_encoders (struct intel_digital_port*) ;
 int mst_cbs ;

int
intel_dp_mst_encoder_init(struct intel_digital_port *intel_dig_port, int conn_base_id)
{
 struct intel_dp *intel_dp = &intel_dig_port->dp;
 struct drm_device *dev = intel_dig_port->base.base.dev;
 int ret;

 intel_dp->can_mst = 1;
 intel_dp->mst_mgr.cbs = &mst_cbs;


 intel_dp_create_fake_mst_encoders(intel_dig_port);
 ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, dev,
        &intel_dp->aux, 16, 3, conn_base_id);
 if (ret) {
  intel_dp->can_mst = 0;
  return ret;
 }
 return 0;
}
