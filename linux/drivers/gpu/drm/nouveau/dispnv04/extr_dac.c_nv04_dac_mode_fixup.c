
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 scalar_t__ nv04_dac_in_use (struct drm_encoder*) ;

__attribute__((used)) static bool nv04_dac_mode_fixup(struct drm_encoder *encoder,
    const struct drm_display_mode *mode,
    struct drm_display_mode *adjusted_mode)
{
 if (nv04_dac_in_use(encoder))
  return 0;

 return 1;
}
