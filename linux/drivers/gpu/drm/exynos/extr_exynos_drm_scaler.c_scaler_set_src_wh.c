
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dummy; } ;
struct drm_exynos_ipp_task_rect {int h; int w; } ;


 int SCALER_SRC_WH ;
 int SCALER_SRC_WH_SET_HEIGHT (int ) ;
 int SCALER_SRC_WH_SET_WIDTH (int ) ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline void scaler_set_src_wh(struct scaler_context *scaler,
 struct drm_exynos_ipp_task_rect *src_pos)
{
 u32 val;

 val = SCALER_SRC_WH_SET_WIDTH(src_pos->w);
 val |= SCALER_SRC_WH_SET_HEIGHT(src_pos->h);
 scaler_write(val, SCALER_SRC_WH);
}
