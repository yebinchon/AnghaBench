
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ddc; } ;
struct intel_dp {TYPE_1__ aux; struct intel_connector* attached_connector; } ;
struct intel_connector {int base; scalar_t__ edid; } ;
struct edid {int dummy; } ;


 scalar_t__ IS_ERR (scalar_t__) ;
 struct edid* drm_edid_duplicate (scalar_t__) ;
 struct edid* drm_get_edid (int *,int *) ;

__attribute__((used)) static struct edid *
intel_dp_get_edid(struct intel_dp *intel_dp)
{
 struct intel_connector *intel_connector = intel_dp->attached_connector;


 if (intel_connector->edid) {

  if (IS_ERR(intel_connector->edid))
   return ((void*)0);

  return drm_edid_duplicate(intel_connector->edid);
 } else
  return drm_get_edid(&intel_connector->base,
        &intel_dp->aux.ddc);
}
