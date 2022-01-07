
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_encoder {int devices; } ;
struct radeon_device {int dummy; } ;
struct radeon_connector {int devices; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int ASIC_IS_DCE4 (struct radeon_device*) ;
 int ATOM_DEVICE_CRT1_SUPPORT ;
 int ATOM_DEVICE_CRT2_SUPPORT ;
 int ATOM_DEVICE_CRT_SUPPORT ;
 int ATOM_DEVICE_CV_SUPPORT ;
 int ATOM_DEVICE_TV1_SUPPORT ;
 int ATOM_S0_CRT1_MASK ;
 int ATOM_S0_CRT2_MASK ;
 int ATOM_S0_CV_MASK ;
 int ATOM_S0_CV_MASK_A ;
 int ATOM_S0_TV1_COMPOSITE ;
 int ATOM_S0_TV1_COMPOSITE_A ;
 int ATOM_S0_TV1_SVIDEO ;
 int ATOM_S0_TV1_SVIDEO_A ;
 int DRM_DEBUG_KMS (char*,int,int ) ;
 int EXTERNAL_ENCODER_ACTION_V3_DACLOAD_DETECTION ;
 int R600_BIOS_0_SCRATCH ;
 int RREG32 (int ) ;
 int atombios_external_encoder_setup (struct drm_encoder*,struct drm_encoder*,int ) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 struct drm_encoder* radeon_get_external_encoder (struct drm_encoder*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static enum drm_connector_status
radeon_atom_dig_detect(struct drm_encoder *encoder, struct drm_connector *connector)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct drm_encoder *ext_encoder = radeon_get_external_encoder(encoder);
 u32 bios_0_scratch;

 if (!ASIC_IS_DCE4(rdev))
  return connector_status_unknown;

 if (!ext_encoder)
  return connector_status_unknown;

 if ((radeon_connector->devices & ATOM_DEVICE_CRT_SUPPORT) == 0)
  return connector_status_unknown;


 atombios_external_encoder_setup(encoder, ext_encoder,
     EXTERNAL_ENCODER_ACTION_V3_DACLOAD_DETECTION);

 bios_0_scratch = RREG32(R600_BIOS_0_SCRATCH);

 DRM_DEBUG_KMS("Bios 0 scratch %x %08x\n", bios_0_scratch, radeon_encoder->devices);
 if (radeon_connector->devices & ATOM_DEVICE_CRT1_SUPPORT) {
  if (bios_0_scratch & ATOM_S0_CRT1_MASK)
   return connector_status_connected;
 }
 if (radeon_connector->devices & ATOM_DEVICE_CRT2_SUPPORT) {
  if (bios_0_scratch & ATOM_S0_CRT2_MASK)
   return connector_status_connected;
 }
 if (radeon_connector->devices & ATOM_DEVICE_CV_SUPPORT) {
  if (bios_0_scratch & (ATOM_S0_CV_MASK|ATOM_S0_CV_MASK_A))
   return connector_status_connected;
 }
 if (radeon_connector->devices & ATOM_DEVICE_TV1_SUPPORT) {
  if (bios_0_scratch & (ATOM_S0_TV1_COMPOSITE | ATOM_S0_TV1_COMPOSITE_A))
   return connector_status_connected;
  else if (bios_0_scratch & (ATOM_S0_TV1_SVIDEO | ATOM_S0_TV1_SVIDEO_A))
   return connector_status_connected;
 }
 return connector_status_disconnected;
}
