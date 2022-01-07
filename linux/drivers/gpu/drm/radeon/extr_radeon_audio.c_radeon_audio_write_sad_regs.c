
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder {TYPE_1__* audio; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct cea_sad {int dummy; } ;
struct TYPE_2__ {int (* write_sad_regs ) (struct drm_encoder*,struct cea_sad*,int) ;} ;


 int BUG_ON (int) ;
 int DRM_ERROR (char*,int) ;
 int drm_edid_to_sad (int ,struct cea_sad**) ;
 int kfree (struct cea_sad*) ;
 int radeon_connector_edid (struct drm_connector*) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 int stub1 (struct drm_encoder*,struct cea_sad*,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_audio_write_sad_regs(struct drm_encoder *encoder)
{
 struct drm_connector *connector = radeon_get_connector_for_encoder(encoder);
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct cea_sad *sads;
 int sad_count;

 if (!connector)
  return;

 sad_count = drm_edid_to_sad(radeon_connector_edid(connector), &sads);
 if (sad_count <= 0) {
  DRM_ERROR("Couldn't read SADs: %d\n", sad_count);
  return;
 }
 BUG_ON(!sads);

 if (radeon_encoder->audio && radeon_encoder->audio->write_sad_regs)
  radeon_encoder->audio->write_sad_regs(encoder, sads, sad_count);

 kfree(sads);
}
