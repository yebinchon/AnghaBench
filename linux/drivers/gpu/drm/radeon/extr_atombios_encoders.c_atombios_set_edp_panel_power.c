
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ucAction; } ;
union dig_transmitter_control {TYPE_2__ v1; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int atom_context; } ;
struct radeon_device {TYPE_3__ mode_info; } ;
struct TYPE_8__ {int hpd; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct radeon_connector {TYPE_4__ hpd; TYPE_1__ base; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {scalar_t__ connector_type; } ;
typedef int args ;


 int ASIC_IS_DCE4 (struct radeon_device*) ;
 int ATOM_TRANSMITTER_ACTION_POWER_OFF ;
 int ATOM_TRANSMITTER_ACTION_POWER_ON ;
 int COMMAND ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int UNIPHYTransmitterControl ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int *,int *) ;
 int mdelay (int) ;
 int memset (union dig_transmitter_control*,int ,int) ;
 scalar_t__ radeon_hpd_sense (struct radeon_device*,int ) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

bool
atombios_set_edp_panel_power(struct drm_connector *connector, int action)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct drm_device *dev = radeon_connector->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 union dig_transmitter_control args;
 int index = GetIndexIntoMasterTable(COMMAND, UNIPHYTransmitterControl);
 uint8_t frev, crev;

 if (connector->connector_type != DRM_MODE_CONNECTOR_eDP)
  goto done;

 if (!ASIC_IS_DCE4(rdev))
  goto done;

 if ((action != ATOM_TRANSMITTER_ACTION_POWER_ON) &&
     (action != ATOM_TRANSMITTER_ACTION_POWER_OFF))
  goto done;

 if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev))
  goto done;

 memset(&args, 0, sizeof(args));

 args.v1.ucAction = action;

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);


 if (action == ATOM_TRANSMITTER_ACTION_POWER_ON) {
  int i;

  for (i = 0; i < 300; i++) {
   if (radeon_hpd_sense(rdev, radeon_connector->hpd.hpd))
    return 1;
   mdelay(1);
  }
  return 0;
 }
done:
 return 1;
}
