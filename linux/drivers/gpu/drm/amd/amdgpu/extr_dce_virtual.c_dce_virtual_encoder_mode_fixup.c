
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;



__attribute__((used)) static bool dce_virtual_encoder_mode_fixup(struct drm_encoder *encoder,
        const struct drm_display_mode *mode,
        struct drm_display_mode *adjusted_mode)
{
 return 1;
}
