
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u32 ;
struct komeda_pipeline {int dummy; } ;
struct komeda_data_flow_cfg {int in_w; int in_h; int out_h; } ;
struct drm_display_mode {unsigned long hdisplay; int htotal; int crtc_clock; } ;


 int EINVAL ;

__attribute__((used)) static int d71_downscaling_clk_check(struct komeda_pipeline *pipe,
         struct drm_display_mode *mode,
         unsigned long aclk_rate,
         struct komeda_data_flow_cfg *dflow)
{
 u32 h_in = dflow->in_w;
 u32 v_in = dflow->in_h;
 u32 v_out = dflow->out_h;
 u64 fraction, denominator;
 if (v_in == v_out) {
  fraction = h_in;
  denominator = mode->hdisplay - 3;
 } else {
  fraction = h_in * v_in;
  denominator = (mode->htotal - 1) * v_out - 2 * v_in;
 }

 return aclk_rate * denominator >= mode->crtc_clock * 1000 * fraction ?
        0 : -EINVAL;
}
