
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_scaler {int main_hratio; int main_vratio; int pre_vratio; int pre_hratio; int pre_shfactor; } ;
struct gsc_context {int dev; scalar_t__ rotation; } ;
struct drm_exynos_ipp_task_rect {int w; int h; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int,...) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int GSC_PRESC_H_RATIO (int ) ;
 int GSC_PRESC_SHFACTOR (int ) ;
 int GSC_PRESC_V_RATIO (int ) ;
 int GSC_PRE_SCALE_RATIO ;
 int gsc_get_prescaler_shfactor (int ,int ,int *) ;
 int gsc_get_ratio_shift (struct gsc_context*,int,int,int *) ;
 int gsc_write (int,int ) ;

__attribute__((used)) static int gsc_set_prescaler(struct gsc_context *ctx, struct gsc_scaler *sc,
        struct drm_exynos_ipp_task_rect *src,
        struct drm_exynos_ipp_task_rect *dst)
{
 u32 cfg;
 u32 src_w, src_h, dst_w, dst_h;
 int ret = 0;

 src_w = src->w;
 src_h = src->h;

 if (ctx->rotation) {
  dst_w = dst->h;
  dst_h = dst->w;
 } else {
  dst_w = dst->w;
  dst_h = dst->h;
 }

 ret = gsc_get_ratio_shift(ctx, src_w, dst_w, &sc->pre_hratio);
 if (ret) {
  DRM_DEV_ERROR(ctx->dev, "failed to get ratio horizontal.\n");
  return ret;
 }

 ret = gsc_get_ratio_shift(ctx, src_h, dst_h, &sc->pre_vratio);
 if (ret) {
  DRM_DEV_ERROR(ctx->dev, "failed to get ratio vertical.\n");
  return ret;
 }

 DRM_DEV_DEBUG_KMS(ctx->dev, "pre_hratio[%d]pre_vratio[%d]\n",
     sc->pre_hratio, sc->pre_vratio);

 sc->main_hratio = (src_w << 16) / dst_w;
 sc->main_vratio = (src_h << 16) / dst_h;

 DRM_DEV_DEBUG_KMS(ctx->dev, "main_hratio[%ld]main_vratio[%ld]\n",
     sc->main_hratio, sc->main_vratio);

 gsc_get_prescaler_shfactor(sc->pre_hratio, sc->pre_vratio,
  &sc->pre_shfactor);

 DRM_DEV_DEBUG_KMS(ctx->dev, "pre_shfactor[%d]\n", sc->pre_shfactor);

 cfg = (GSC_PRESC_SHFACTOR(sc->pre_shfactor) |
  GSC_PRESC_H_RATIO(sc->pre_hratio) |
  GSC_PRESC_V_RATIO(sc->pre_vratio));
 gsc_write(cfg, GSC_PRE_SCALE_RATIO);

 return ret;
}
