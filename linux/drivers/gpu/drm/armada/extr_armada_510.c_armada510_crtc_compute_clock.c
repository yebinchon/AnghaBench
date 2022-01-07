
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_display_mode {unsigned long crtc_clock; } ;
struct armada_crtc {int clk; struct armada510_variant_data* variant_data; } ;
struct armada_clk_result {int div; int clk; int desired_clk_hz; } ;
struct armada510_variant_data {int sel_clk; int clks; } ;


 int ARRAY_SIZE (int ) ;
 int* armada510_clk_sels ;
 int armada510_clocking ;
 int armada_crtc_select_clock (struct armada_crtc*,struct armada_clk_result*,int *,int ,int ,unsigned long) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int swap (int ,int ) ;

__attribute__((used)) static int armada510_crtc_compute_clock(struct armada_crtc *dcrtc,
 const struct drm_display_mode *mode, uint32_t *sclk)
{
 struct armada510_variant_data *v = dcrtc->variant_data;
 unsigned long desired_khz = mode->crtc_clock;
 struct armada_clk_result res;
 int ret, idx;

 idx = armada_crtc_select_clock(dcrtc, &res, &armada510_clocking,
           v->clks, ARRAY_SIZE(v->clks),
           desired_khz);
 if (idx < 0)
  return idx;

 ret = clk_prepare_enable(res.clk);
 if (ret)
  return ret;

 if (sclk) {
  clk_set_rate(res.clk, res.desired_clk_hz);

  *sclk = res.div | armada510_clk_sels[idx];


  v->sel_clk = res.clk;
  swap(dcrtc->clk, res.clk);
 }

 clk_disable_unprepare(res.clk);

 return 0;
}
