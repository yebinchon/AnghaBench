
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int support; } ;
struct drm_psb_private {int lvds_enabled_in_vbt; int dplla_96mhz; TYPE_1__ edp; } ;
struct bdb_header {int dummy; } ;
struct bdb_driver_features {scalar_t__ lvds_config; scalar_t__ primary_lfp_id; } ;


 int BDB_DRIVER_FEATURES ;
 scalar_t__ BDB_DRIVER_FEATURE_EDP ;
 int DRM_DEBUG_KMS (char*,scalar_t__) ;
 struct bdb_driver_features* find_section (struct bdb_header*,int ) ;

__attribute__((used)) static void
parse_driver_features(struct drm_psb_private *dev_priv,
        struct bdb_header *bdb)
{
 struct bdb_driver_features *driver;

 driver = find_section(bdb, BDB_DRIVER_FEATURES);
 if (!driver)
  return;

 if (driver->lvds_config == BDB_DRIVER_FEATURE_EDP)
  dev_priv->edp.support = 1;

 dev_priv->lvds_enabled_in_vbt = driver->lvds_config != 0;
 DRM_DEBUG_KMS("LVDS VBT config bits: 0x%x\n", driver->lvds_config);


 if (driver->primary_lfp_id)
  dev_priv->dplla_96mhz = 1;
 else
  dev_priv->dplla_96mhz = 0;
}
