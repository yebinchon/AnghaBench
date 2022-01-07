
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_encoder {TYPE_2__* audio; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int dummy; } ;
struct drm_encoder {int crtc; TYPE_1__* dev; } ;
struct TYPE_4__ {int (* set_dto ) (struct radeon_device*,struct radeon_crtc*,unsigned int) ;} ;
struct TYPE_3__ {struct radeon_device* dev_private; } ;


 int stub1 (struct radeon_device*,struct radeon_crtc*,unsigned int) ;
 struct radeon_crtc* to_radeon_crtc (int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_audio_set_dto(struct drm_encoder *encoder, unsigned int clock)
{
 struct radeon_device *rdev = encoder->dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_crtc *crtc = to_radeon_crtc(encoder->crtc);

 if (radeon_encoder->audio && radeon_encoder->audio->set_dto)
  radeon_encoder->audio->set_dto(rdev, crtc, clock);
}
