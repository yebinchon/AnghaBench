
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vrestart; int hrestart; int frestart; } ;
struct radeon_encoder_tv_dac {TYPE_2__ tv; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct radeon_encoder {struct radeon_encoder_tv_dac* enc_priv; TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_TV_FRESTART ;
 int RADEON_TV_HRESTART ;
 int RADEON_TV_VRESTART ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void radeon_legacy_write_tv_restarts(struct radeon_encoder *radeon_encoder)
{
 struct drm_device *dev = radeon_encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder_tv_dac *tv_dac = radeon_encoder->enc_priv;
 WREG32(RADEON_TV_FRESTART, tv_dac->tv.frestart);
 WREG32(RADEON_TV_HRESTART, tv_dac->tv.hrestart);
 WREG32(RADEON_TV_VRESTART, tv_dac->tv.vrestart);
}
