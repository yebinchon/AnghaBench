
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clock; } ;
struct TYPE_4__ {TYPE_1__ mode; } ;
struct nv17_tv_norm_params {scalar_t__ kind; TYPE_2__ ctv_enc_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;


 scalar_t__ CTV_ENC_MODE ;
 struct nv17_tv_norm_params* get_tv_norm (struct drm_encoder*) ;
 scalar_t__ nv04_dac_in_use (struct drm_encoder*) ;

__attribute__((used)) static bool nv17_tv_mode_fixup(struct drm_encoder *encoder,
          const struct drm_display_mode *mode,
          struct drm_display_mode *adjusted_mode)
{
 struct nv17_tv_norm_params *tv_norm = get_tv_norm(encoder);

 if (nv04_dac_in_use(encoder))
  return 0;

 if (tv_norm->kind == CTV_ENC_MODE)
  adjusted_mode->clock = tv_norm->ctv_enc_mode.mode.clock;
 else
  adjusted_mode->clock = 90000;

 return 1;
}
