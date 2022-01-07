
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_i2c_bus_rec {int valid; } ;
struct radeon_hpd {void* hpd; } ;
struct TYPE_4__ {int connector_table; } ;
struct radeon_device {int flags; TYPE_2__ mode_info; int family; TYPE_1__* pdev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_3__ {int device; int subsystem_vendor; int subsystem_device; } ;


 scalar_t__ ASIC_IS_RN50 (struct radeon_device*) ;
 int ATOM_DEVICE_CRT1_SUPPORT ;
 int ATOM_DEVICE_CRT2_SUPPORT ;
 int ATOM_DEVICE_DFP1_SUPPORT ;
 int ATOM_DEVICE_DFP2_SUPPORT ;
 int ATOM_DEVICE_LCD1_SUPPORT ;
 int ATOM_DEVICE_TV1_SUPPORT ;
 int CHIP_R100 ;
 int CHIP_R200 ;
 int CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I ;
 int CONNECTOR_OBJECT_ID_LVDS ;
 int CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D ;
 int CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I ;
 int CONNECTOR_OBJECT_ID_SVIDEO ;
 int CONNECTOR_OBJECT_ID_VGA ;
 int CT_NONE ;





 int DDC_CRT2 ;
 int DDC_DVI ;
 int DDC_MONID ;
 int DDC_NONE_DETECTED ;
 int DDC_VGA ;
 int DRM_INFO (char*,int) ;
 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_CONNECTOR_DVII ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_CONNECTOR_SVIDEO ;
 int DRM_MODE_CONNECTOR_VGA ;
 void* RADEON_HPD_1 ;
 void* RADEON_HPD_2 ;
 void* RADEON_HPD_NONE ;
 int RADEON_IS_MOBILITY ;
 int RADEON_SINGLE_CRTC ;
 struct radeon_i2c_bus_rec combios_setup_i2c_bus (struct radeon_device*,int ,int ,int ) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int radeon_add_legacy_connector (struct drm_device*,int,int,int ,struct radeon_i2c_bus_rec*,int ,struct radeon_hpd*) ;
 int radeon_add_legacy_encoder (struct drm_device*,int ,int) ;
 int radeon_connector_table ;
 int radeon_get_encoder_enum (struct drm_device*,int,int) ;
 int radeon_link_encoder_connector (struct drm_device*) ;

bool radeon_get_legacy_connector_info_from_table(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_i2c_bus_rec ddc_i2c;
 struct radeon_hpd hpd;

 rdev->mode_info.connector_table = radeon_connector_table;
 if (rdev->mode_info.connector_table == CT_NONE) {
   rdev->mode_info.connector_table = 140;
 }

 switch (rdev->mode_info.connector_table) {
 case 140:
  DRM_INFO("Connector Table: %d (generic)\n",
    rdev->mode_info.connector_table);

  if (rdev->flags & RADEON_SINGLE_CRTC) {

   ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
   hpd.hpd = RADEON_HPD_NONE;
   radeon_add_legacy_encoder(dev,
        radeon_get_encoder_enum(dev,
         ATOM_DEVICE_CRT1_SUPPORT,
         1),
        ATOM_DEVICE_CRT1_SUPPORT);
   radeon_add_legacy_connector(dev, 0,
          ATOM_DEVICE_CRT1_SUPPORT,
          DRM_MODE_CONNECTOR_VGA,
          &ddc_i2c,
          CONNECTOR_OBJECT_ID_VGA,
          &hpd);
  } else if (rdev->flags & RADEON_IS_MOBILITY) {

   ddc_i2c = combios_setup_i2c_bus(rdev, DDC_NONE_DETECTED, 0, 0);
   hpd.hpd = RADEON_HPD_NONE;
   radeon_add_legacy_encoder(dev,
        radeon_get_encoder_enum(dev,
         ATOM_DEVICE_LCD1_SUPPORT,
         0),
        ATOM_DEVICE_LCD1_SUPPORT);
   radeon_add_legacy_connector(dev, 0,
          ATOM_DEVICE_LCD1_SUPPORT,
          DRM_MODE_CONNECTOR_LVDS,
          &ddc_i2c,
          CONNECTOR_OBJECT_ID_LVDS,
          &hpd);


   ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
   hpd.hpd = RADEON_HPD_NONE;
   radeon_add_legacy_encoder(dev,
        radeon_get_encoder_enum(dev,
         ATOM_DEVICE_CRT1_SUPPORT,
         1),
        ATOM_DEVICE_CRT1_SUPPORT);
   radeon_add_legacy_connector(dev, 1,
          ATOM_DEVICE_CRT1_SUPPORT,
          DRM_MODE_CONNECTOR_VGA,
          &ddc_i2c,
          CONNECTOR_OBJECT_ID_VGA,
          &hpd);
  } else {

   ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
   hpd.hpd = RADEON_HPD_1;
   radeon_add_legacy_encoder(dev,
        radeon_get_encoder_enum(dev,
         ATOM_DEVICE_DFP1_SUPPORT,
         0),
        ATOM_DEVICE_DFP1_SUPPORT);
   radeon_add_legacy_encoder(dev,
        radeon_get_encoder_enum(dev,
         ATOM_DEVICE_CRT2_SUPPORT,
         2),
        ATOM_DEVICE_CRT2_SUPPORT);
   radeon_add_legacy_connector(dev, 0,
          ATOM_DEVICE_DFP1_SUPPORT |
          ATOM_DEVICE_CRT2_SUPPORT,
          DRM_MODE_CONNECTOR_DVII,
          &ddc_i2c,
          CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
          &hpd);


   ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
   hpd.hpd = RADEON_HPD_NONE;
   radeon_add_legacy_encoder(dev,
        radeon_get_encoder_enum(dev,
         ATOM_DEVICE_CRT1_SUPPORT,
         1),
        ATOM_DEVICE_CRT1_SUPPORT);
   radeon_add_legacy_connector(dev, 1,
          ATOM_DEVICE_CRT1_SUPPORT,
          DRM_MODE_CONNECTOR_VGA,
          &ddc_i2c,
          CONNECTOR_OBJECT_ID_VGA,
          &hpd);
  }

  if (rdev->family != CHIP_R100 && rdev->family != CHIP_R200) {

   ddc_i2c.valid = 0;
   hpd.hpd = RADEON_HPD_NONE;
   radeon_add_legacy_encoder(dev,
        radeon_get_encoder_enum(dev,
         ATOM_DEVICE_TV1_SUPPORT,
         2),
        ATOM_DEVICE_TV1_SUPPORT);
   radeon_add_legacy_connector(dev, 2,
          ATOM_DEVICE_TV1_SUPPORT,
          DRM_MODE_CONNECTOR_SVIDEO,
          &ddc_i2c,
          CONNECTOR_OBJECT_ID_SVIDEO,
          &hpd);
  }
  break;
 case 139:
  DRM_INFO("Connector Table: %d (ibook)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_LCD1_SUPPORT,
        0),
       ATOM_DEVICE_LCD1_SUPPORT);
  radeon_add_legacy_connector(dev, 0, ATOM_DEVICE_LCD1_SUPPORT,
         DRM_MODE_CONNECTOR_LVDS, &ddc_i2c,
         CONNECTOR_OBJECT_ID_LVDS,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT2_SUPPORT,
        2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 1, ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 2, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 132:
  DRM_INFO("Connector Table: %d (powerbook external tmds)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_LCD1_SUPPORT,
        0),
       ATOM_DEVICE_LCD1_SUPPORT);
  radeon_add_legacy_connector(dev, 0, ATOM_DEVICE_LCD1_SUPPORT,
         DRM_MODE_CONNECTOR_LVDS, &ddc_i2c,
         CONNECTOR_OBJECT_ID_LVDS,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_2;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_DFP2_SUPPORT,
        0),
       ATOM_DEVICE_DFP2_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT1_SUPPORT,
        1),
       ATOM_DEVICE_CRT1_SUPPORT);

  radeon_add_legacy_connector(dev, 1,
         ATOM_DEVICE_DFP2_SUPPORT |
         ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 2, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 131:
  DRM_INFO("Connector Table: %d (powerbook internal tmds)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_LCD1_SUPPORT,
        0),
       ATOM_DEVICE_LCD1_SUPPORT);
  radeon_add_legacy_connector(dev, 0, ATOM_DEVICE_LCD1_SUPPORT,
         DRM_MODE_CONNECTOR_LVDS, &ddc_i2c,
         CONNECTOR_OBJECT_ID_LVDS,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_1;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_DFP1_SUPPORT,
        0),
       ATOM_DEVICE_DFP1_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT1_SUPPORT,
        1),
       ATOM_DEVICE_CRT1_SUPPORT);
  radeon_add_legacy_connector(dev, 1,
         ATOM_DEVICE_DFP1_SUPPORT |
         ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 2, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 130:
  DRM_INFO("Connector Table: %d (powerbook vga)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_LCD1_SUPPORT,
        0),
       ATOM_DEVICE_LCD1_SUPPORT);
  radeon_add_legacy_connector(dev, 0, ATOM_DEVICE_LCD1_SUPPORT,
         DRM_MODE_CONNECTOR_LVDS, &ddc_i2c,
         CONNECTOR_OBJECT_ID_LVDS,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT1_SUPPORT,
        1),
       ATOM_DEVICE_CRT1_SUPPORT);
  radeon_add_legacy_connector(dev, 1, ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 2, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 134:
  DRM_INFO("Connector Table: %d (mini external tmds)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_CRT2, 0, 0);
  hpd.hpd = RADEON_HPD_2;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_DFP2_SUPPORT,
        0),
       ATOM_DEVICE_DFP2_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT2_SUPPORT,
        2),
       ATOM_DEVICE_CRT2_SUPPORT);

  radeon_add_legacy_connector(dev, 0,
         ATOM_DEVICE_DFP2_SUPPORT |
         ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 1, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 133:
  DRM_INFO("Connector Table: %d (mini internal tmds)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_CRT2, 0, 0);
  hpd.hpd = RADEON_HPD_1;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_DFP1_SUPPORT,
        0),
       ATOM_DEVICE_DFP1_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT2_SUPPORT,
        2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 0,
         ATOM_DEVICE_DFP1_SUPPORT |
         ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 1, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 138:
  DRM_INFO("Connector Table: %d (imac g5 isight)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_MONID, 0, 0);
  hpd.hpd = RADEON_HPD_1;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_DFP1_SUPPORT,
        0),
       ATOM_DEVICE_DFP1_SUPPORT);
  radeon_add_legacy_connector(dev, 0, ATOM_DEVICE_DFP1_SUPPORT,
         DRM_MODE_CONNECTOR_DVID, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT2_SUPPORT,
        2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 1, ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 2, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 141:
  DRM_INFO("Connector Table: %d (emac)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT1_SUPPORT,
        1),
       ATOM_DEVICE_CRT1_SUPPORT);
  radeon_add_legacy_connector(dev, 0, ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_CRT2, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT2_SUPPORT,
        2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 1, ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 2, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 129:
  DRM_INFO("Connector Table: %d (rn50-power)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT1_SUPPORT,
        1),
       ATOM_DEVICE_CRT1_SUPPORT);
  radeon_add_legacy_connector(dev, 0, ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);
  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_CRT2, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT2_SUPPORT,
        2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 1, ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);
  break;
 case 135:
  DRM_INFO("Connector Table: %d (mac x800)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_1;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
          ATOM_DEVICE_DFP1_SUPPORT,
          0),
       ATOM_DEVICE_DFP1_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
          ATOM_DEVICE_CRT1_SUPPORT,
          1),
       ATOM_DEVICE_CRT1_SUPPORT);
  radeon_add_legacy_connector(dev, 0,
         ATOM_DEVICE_DFP1_SUPPORT |
         ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_MONID, 0, 0);
  hpd.hpd = RADEON_HPD_2;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
          ATOM_DEVICE_DFP2_SUPPORT,
          0),
       ATOM_DEVICE_DFP2_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
          ATOM_DEVICE_CRT2_SUPPORT,
          2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 1,
         ATOM_DEVICE_DFP2_SUPPORT |
         ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I,
         &hpd);
  break;
 case 136:
  DRM_INFO("Connector Table: %d (mac g5 9600)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_1;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
          ATOM_DEVICE_DFP2_SUPPORT,
          0),
       ATOM_DEVICE_DFP2_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
          ATOM_DEVICE_CRT2_SUPPORT,
          2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 0,
         ATOM_DEVICE_DFP2_SUPPORT |
         ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_2;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
          ATOM_DEVICE_DFP1_SUPPORT,
          0),
       ATOM_DEVICE_DFP1_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
          ATOM_DEVICE_CRT1_SUPPORT,
          1),
       ATOM_DEVICE_CRT1_SUPPORT);
  radeon_add_legacy_connector(dev, 1,
         ATOM_DEVICE_DFP1_SUPPORT |
         ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 2, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 128:
  DRM_INFO("Connector Table: %d (SAM440ep embedded board)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_NONE_DETECTED, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_LCD1_SUPPORT,
        0),
       ATOM_DEVICE_LCD1_SUPPORT);
  radeon_add_legacy_connector(dev, 0, ATOM_DEVICE_LCD1_SUPPORT,
         DRM_MODE_CONNECTOR_LVDS, &ddc_i2c,
         CONNECTOR_OBJECT_ID_LVDS,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_1;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_DFP1_SUPPORT,
        0),
       ATOM_DEVICE_DFP1_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT2_SUPPORT,
        2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 1,
         ATOM_DEVICE_DFP1_SUPPORT |
         ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT1_SUPPORT,
        1),
       ATOM_DEVICE_CRT1_SUPPORT);
  radeon_add_legacy_connector(dev, 2,
         ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 3, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 case 137:
  DRM_INFO("Connector Table: %d (mac g4 silver)\n",
    rdev->mode_info.connector_table);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_DVI, 0, 0);
  hpd.hpd = RADEON_HPD_1;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_DFP1_SUPPORT,
        0),
       ATOM_DEVICE_DFP1_SUPPORT);
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT2_SUPPORT,
        2),
       ATOM_DEVICE_CRT2_SUPPORT);
  radeon_add_legacy_connector(dev, 0,
         ATOM_DEVICE_DFP1_SUPPORT |
         ATOM_DEVICE_CRT2_SUPPORT,
         DRM_MODE_CONNECTOR_DVII, &ddc_i2c,
         CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I,
         &hpd);

  ddc_i2c = combios_setup_i2c_bus(rdev, DDC_VGA, 0, 0);
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_CRT1_SUPPORT,
        1),
       ATOM_DEVICE_CRT1_SUPPORT);
  radeon_add_legacy_connector(dev, 1, ATOM_DEVICE_CRT1_SUPPORT,
         DRM_MODE_CONNECTOR_VGA, &ddc_i2c,
         CONNECTOR_OBJECT_ID_VGA,
         &hpd);

  ddc_i2c.valid = 0;
  hpd.hpd = RADEON_HPD_NONE;
  radeon_add_legacy_encoder(dev,
       radeon_get_encoder_enum(dev,
        ATOM_DEVICE_TV1_SUPPORT,
        2),
       ATOM_DEVICE_TV1_SUPPORT);
  radeon_add_legacy_connector(dev, 2, ATOM_DEVICE_TV1_SUPPORT,
         DRM_MODE_CONNECTOR_SVIDEO,
         &ddc_i2c,
         CONNECTOR_OBJECT_ID_SVIDEO,
         &hpd);
  break;
 default:
  DRM_INFO("Connector table: %d (invalid)\n",
    rdev->mode_info.connector_table);
  return 0;
 }

 radeon_link_encoder_connector(dev);

 return 1;
}
