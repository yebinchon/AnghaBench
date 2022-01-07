
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int lock; int use_packed_pixel; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {int dummy; } ;


 struct sii8620* bridge_to_sii8620 (struct drm_bridge*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sii8620_is_packing_required (struct sii8620*,struct drm_display_mode*) ;

__attribute__((used)) static bool sii8620_mode_fixup(struct drm_bridge *bridge,
          const struct drm_display_mode *mode,
          struct drm_display_mode *adjusted_mode)
{
 struct sii8620 *ctx = bridge_to_sii8620(bridge);

 mutex_lock(&ctx->lock);

 ctx->use_packed_pixel = sii8620_is_packing_required(ctx, adjusted_mode);

 mutex_unlock(&ctx->lock);

 return 1;
}
