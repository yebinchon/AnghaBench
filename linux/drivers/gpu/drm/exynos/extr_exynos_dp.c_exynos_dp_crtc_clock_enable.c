
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int crtc; } ;
struct exynos_dp_device {struct drm_encoder encoder; } ;
struct analogix_dp_plat_data {int dummy; } ;


 int EPERM ;
 int exynos_drm_pipe_clk_enable (int ,int) ;
 struct exynos_dp_device* to_dp (struct analogix_dp_plat_data*) ;
 int to_exynos_crtc (int ) ;

__attribute__((used)) static int exynos_dp_crtc_clock_enable(struct analogix_dp_plat_data *plat_data,
    bool enable)
{
 struct exynos_dp_device *dp = to_dp(plat_data);
 struct drm_encoder *encoder = &dp->encoder;

 if (!encoder->crtc)
  return -EPERM;

 exynos_drm_pipe_clk_enable(to_exynos_crtc(encoder->crtc), enable);

 return 0;
}
