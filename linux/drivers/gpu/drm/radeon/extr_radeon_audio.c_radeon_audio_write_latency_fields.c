
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder {TYPE_1__* audio; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int (* write_latency_fields ) (struct drm_encoder*,struct drm_connector*,struct drm_display_mode*) ;} ;


 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 int stub1 (struct drm_encoder*,struct drm_connector*,struct drm_display_mode*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_audio_write_latency_fields(struct drm_encoder *encoder,
           struct drm_display_mode *mode)
{
 struct drm_connector *connector = radeon_get_connector_for_encoder(encoder);
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);

 if (!connector)
  return;

 if (radeon_encoder->audio && radeon_encoder->audio->write_latency_fields)
  radeon_encoder->audio->write_latency_fields(encoder, connector, mode);
}
