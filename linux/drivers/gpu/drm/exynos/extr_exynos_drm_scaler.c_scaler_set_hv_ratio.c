
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dummy; } ;
struct drm_exynos_ipp_task_rect {int h; int w; } ;


 int SCALER_H_RATIO ;
 int SCALER_H_RATIO_SET (int) ;
 int SCALER_V_RATIO ;
 int SCALER_V_RATIO_SET (int) ;
 scalar_t__ drm_rotation_90_or_270 (unsigned int) ;
 int scaler_write (int,int ) ;

__attribute__((used)) static inline void scaler_set_hv_ratio(struct scaler_context *scaler,
 unsigned int rotation,
 struct drm_exynos_ipp_task_rect *src_pos,
 struct drm_exynos_ipp_task_rect *dst_pos)
{
 u32 val, h_ratio, v_ratio;

 if (drm_rotation_90_or_270(rotation)) {
  h_ratio = (src_pos->h << 16) / dst_pos->w;
  v_ratio = (src_pos->w << 16) / dst_pos->h;
 } else {
  h_ratio = (src_pos->w << 16) / dst_pos->w;
  v_ratio = (src_pos->h << 16) / dst_pos->h;
 }

 val = SCALER_H_RATIO_SET(h_ratio);
 scaler_write(val, SCALER_H_RATIO);

 val = SCALER_V_RATIO_SET(v_ratio);
 scaler_write(val, SCALER_V_RATIO);
}
