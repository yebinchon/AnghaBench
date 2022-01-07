
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dummy; } ;
struct drm_exynos_ipp_task_rect {int y; int x; } ;


 int SCALER_DST_POS ;
 int SCALER_DST_POS_SET_H_POS (int ) ;
 int SCALER_DST_POS_SET_V_POS (int ) ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline void scaler_set_dst_wh(struct scaler_context *scaler,
 struct drm_exynos_ipp_task_rect *dst_pos)
{
 u32 val;

 val = SCALER_DST_POS_SET_H_POS(dst_pos->x);
 val |= SCALER_DST_POS_SET_V_POS(dst_pos->y);
 scaler_write(val, SCALER_DST_POS);
}
