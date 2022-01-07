
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_encoder_mst {TYPE_3__* connector; TYPE_2__* primary; int pbn; } ;
struct radeon_encoder {struct radeon_encoder_mst* enc_priv; } ;
struct radeon_connector_atom_dig {int dp_clock; int dp_lane_count; int dpcd; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_6__ {int devices; struct radeon_connector_atom_dig* con_priv; } ;
struct TYPE_4__ {int encoder_type; } ;
struct TYPE_5__ {int active_device; int devices; TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int drm_dp_calc_pbn_mode (int ,int) ;
 int drm_dp_max_lane_count (int ) ;
 int drm_dp_max_link_rate (int ) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static bool radeon_mst_mode_fixup(struct drm_encoder *encoder,
       const struct drm_display_mode *mode,
       struct drm_display_mode *adjusted_mode)
{
 struct radeon_encoder_mst *mst_enc;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_connector_atom_dig *dig_connector;
 int bpp = 24;

 mst_enc = radeon_encoder->enc_priv;

 mst_enc->pbn = drm_dp_calc_pbn_mode(adjusted_mode->clock, bpp);

 mst_enc->primary->active_device = mst_enc->primary->devices & mst_enc->connector->devices;
 DRM_DEBUG_KMS("setting active device to %08x from %08x %08x for encoder %d\n",
        mst_enc->primary->active_device, mst_enc->primary->devices,
        mst_enc->connector->devices, mst_enc->primary->base.encoder_type);


 drm_mode_set_crtcinfo(adjusted_mode, 0);
 dig_connector = mst_enc->connector->con_priv;
 dig_connector->dp_lane_count = drm_dp_max_lane_count(dig_connector->dpcd);
 dig_connector->dp_clock = drm_dp_max_link_rate(dig_connector->dpcd);
 DRM_DEBUG_KMS("dig clock %p %d %d\n", dig_connector,
        dig_connector->dp_lane_count, dig_connector->dp_clock);
 return 1;
}
