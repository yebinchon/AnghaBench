
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enable; } ;
struct TYPE_4__ {TYPE_1__ psr; int drrs_type; scalar_t__ int_lvds_support; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct bdb_header {int version; } ;
struct bdb_driver_features {scalar_t__ lvds_config; int psr_enabled; int drrs_enabled; } ;


 int BDB_DRIVER_FEATURES ;
 scalar_t__ BDB_DRIVER_FEATURE_INT_LVDS ;
 scalar_t__ BDB_DRIVER_FEATURE_INT_SDVO_LVDS ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int DRRS_NOT_SUPPORTED ;
 int INTEL_GEN (struct drm_i915_private*) ;
 struct bdb_driver_features* find_section (struct bdb_header const*,int ) ;

__attribute__((used)) static void
parse_driver_features(struct drm_i915_private *dev_priv,
        const struct bdb_header *bdb)
{
 const struct bdb_driver_features *driver;

 driver = find_section(bdb, BDB_DRIVER_FEATURES);
 if (!driver)
  return;

 if (INTEL_GEN(dev_priv) >= 5) {





  if (driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS)
   dev_priv->vbt.int_lvds_support = 0;
 } else {
  if (bdb->version >= 134 &&
      driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS &&
      driver->lvds_config != BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
   dev_priv->vbt.int_lvds_support = 0;
 }

 DRM_DEBUG_KMS("DRRS State Enabled:%d\n", driver->drrs_enabled);






 if (!driver->drrs_enabled)
  dev_priv->vbt.drrs_type = DRRS_NOT_SUPPORTED;
 dev_priv->vbt.psr.enable = driver->psr_enabled;
}
