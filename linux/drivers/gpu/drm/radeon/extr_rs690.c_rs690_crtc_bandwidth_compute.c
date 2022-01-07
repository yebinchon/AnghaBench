
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_22__ {scalar_t__ full; } ;
struct TYPE_18__ {scalar_t__ full; } ;
struct TYPE_17__ {scalar_t__ full; } ;
struct TYPE_15__ {void* full; } ;
struct rs690_watermark {int lb_request_fifo_depth; TYPE_8__ priority_mark; TYPE_8__ priority_mark_max; TYPE_4__ worst_case_latency; TYPE_3__ dbpp; TYPE_8__ num_line_pair; TYPE_8__ active_time; TYPE_1__ consumption_rate; } ;
struct TYPE_20__ {scalar_t__ pm_method; int current_sclk; TYPE_8__ ht_bandwidth; TYPE_8__ k8_bandwidth; TYPE_8__ igp_sideport_mclk; TYPE_8__ sideport_bandwidth; TYPE_8__ sclk; scalar_t__ dpm_enabled; } ;
struct TYPE_16__ {scalar_t__ igp_sideport_enabled; } ;
struct radeon_device {scalar_t__ family; TYPE_6__ pm; TYPE_2__ mc; } ;
struct drm_display_mode {int crtc_hdisplay; int clock; int crtc_htotal; } ;
struct TYPE_19__ {struct drm_display_mode mode; int enabled; } ;
struct TYPE_21__ {scalar_t__ full; } ;
struct radeon_crtc {scalar_t__ rmx_type; TYPE_5__ base; TYPE_8__ hsc; TYPE_7__ vsc; } ;
typedef TYPE_8__ fixed20_12 ;


 scalar_t__ CHIP_RS780 ;
 scalar_t__ CHIP_RS880 ;
 scalar_t__ PM_METHOD_DPM ;
 scalar_t__ RMX_OFF ;
 void* dfixed_ceil (TYPE_8__) ;
 scalar_t__ dfixed_const (int) ;
 void* dfixed_div (TYPE_8__,TYPE_8__) ;
 void* dfixed_mul (TYPE_8__,TYPE_8__) ;
 int dfixed_trunc (TYPE_8__) ;
 int radeon_dpm_get_sclk (struct radeon_device*,int) ;

__attribute__((used)) static void rs690_crtc_bandwidth_compute(struct radeon_device *rdev,
      struct radeon_crtc *crtc,
      struct rs690_watermark *wm,
      bool low)
{
 struct drm_display_mode *mode = &crtc->base.mode;
 fixed20_12 a, b, c;
 fixed20_12 pclk, request_fifo_depth, tolerable_latency, estimated_width;
 fixed20_12 consumption_time, line_time, chunk_time, read_delay_latency;
 fixed20_12 sclk, core_bandwidth, max_bandwidth;
 u32 selected_sclk;

 if (!crtc->base.enabled) {

  wm->lb_request_fifo_depth = 4;
  return;
 }

 if (((rdev->family == CHIP_RS780) || (rdev->family == CHIP_RS880)) &&
     (rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled)
  selected_sclk = radeon_dpm_get_sclk(rdev, low);
 else
  selected_sclk = rdev->pm.current_sclk;


 a.full = dfixed_const(100);
 sclk.full = dfixed_const(selected_sclk);
 sclk.full = dfixed_div(sclk, a);


 a.full = dfixed_const(16);
 core_bandwidth.full = dfixed_div(rdev->pm.sclk, a);

 if (crtc->vsc.full > dfixed_const(2))
  wm->num_line_pair.full = dfixed_const(2);
 else
  wm->num_line_pair.full = dfixed_const(1);

 b.full = dfixed_const(mode->crtc_hdisplay);
 c.full = dfixed_const(256);
 a.full = dfixed_div(b, c);
 request_fifo_depth.full = dfixed_mul(a, wm->num_line_pair);
 request_fifo_depth.full = dfixed_ceil(request_fifo_depth);
 if (a.full < dfixed_const(4)) {
  wm->lb_request_fifo_depth = 4;
 } else {
  wm->lb_request_fifo_depth = dfixed_trunc(request_fifo_depth);
 }







 a.full = dfixed_const(mode->clock);
 b.full = dfixed_const(1000);
 a.full = dfixed_div(a, b);
 pclk.full = dfixed_div(b, a);
 if (crtc->rmx_type != RMX_OFF) {
  b.full = dfixed_const(2);
  if (crtc->vsc.full > b.full)
   b.full = crtc->vsc.full;
  b.full = dfixed_mul(b, crtc->hsc);
  c.full = dfixed_const(2);
  b.full = dfixed_div(b, c);
  consumption_time.full = dfixed_div(pclk, b);
 } else {
  consumption_time.full = pclk.full;
 }
 a.full = dfixed_const(1);
 wm->consumption_rate.full = dfixed_div(a, consumption_time);







 a.full = dfixed_const(crtc->base.mode.crtc_htotal);
 line_time.full = dfixed_mul(a, pclk);






 a.full = dfixed_const(crtc->base.mode.crtc_htotal);
 b.full = dfixed_const(crtc->base.mode.crtc_hdisplay);
 wm->active_time.full = dfixed_mul(line_time, b);
 wm->active_time.full = dfixed_div(wm->active_time, a);


 max_bandwidth = core_bandwidth;
 if (rdev->mc.igp_sideport_enabled) {
  if (max_bandwidth.full > rdev->pm.sideport_bandwidth.full &&
   rdev->pm.sideport_bandwidth.full)
   max_bandwidth = rdev->pm.sideport_bandwidth;
  read_delay_latency.full = dfixed_const(370 * 800);
  a.full = dfixed_const(1000);
  b.full = dfixed_div(rdev->pm.igp_sideport_mclk, a);
  read_delay_latency.full = dfixed_div(read_delay_latency, b);
  read_delay_latency.full = dfixed_mul(read_delay_latency, a);
 } else {
  if (max_bandwidth.full > rdev->pm.k8_bandwidth.full &&
   rdev->pm.k8_bandwidth.full)
   max_bandwidth = rdev->pm.k8_bandwidth;
  if (max_bandwidth.full > rdev->pm.ht_bandwidth.full &&
   rdev->pm.ht_bandwidth.full)
   max_bandwidth = rdev->pm.ht_bandwidth;
  read_delay_latency.full = dfixed_const(5000);
 }


 a.full = dfixed_const(16);
 sclk.full = dfixed_mul(max_bandwidth, a);
 a.full = dfixed_const(1000);
 sclk.full = dfixed_div(a, sclk);





 a.full = dfixed_const(256 * 13);
 chunk_time.full = dfixed_mul(sclk, a);
 a.full = dfixed_const(10);
 chunk_time.full = dfixed_div(chunk_time, a);
 if (dfixed_trunc(wm->num_line_pair) > 1) {
  a.full = dfixed_const(3);
  wm->worst_case_latency.full = dfixed_mul(a, chunk_time);
  wm->worst_case_latency.full += read_delay_latency.full;
 } else {
  a.full = dfixed_const(2);
  wm->worst_case_latency.full = dfixed_mul(a, chunk_time);
  wm->worst_case_latency.full += read_delay_latency.full;
 }
 if ((2+wm->lb_request_fifo_depth) >= dfixed_trunc(request_fifo_depth)) {
  tolerable_latency.full = line_time.full;
 } else {
  tolerable_latency.full = dfixed_const(wm->lb_request_fifo_depth - 2);
  tolerable_latency.full = request_fifo_depth.full - tolerable_latency.full;
  tolerable_latency.full = dfixed_mul(tolerable_latency, chunk_time);
  tolerable_latency.full = line_time.full - tolerable_latency.full;
 }

 wm->dbpp.full = dfixed_const(4 * 8);




 a.full = dfixed_const(16);
 wm->priority_mark_max.full = dfixed_const(crtc->base.mode.crtc_hdisplay);
 wm->priority_mark_max.full = dfixed_div(wm->priority_mark_max, a);
 wm->priority_mark_max.full = dfixed_ceil(wm->priority_mark_max);


 estimated_width.full = tolerable_latency.full - wm->worst_case_latency.full;
 estimated_width.full = dfixed_div(estimated_width, consumption_time);
 if (dfixed_trunc(estimated_width) > crtc->base.mode.crtc_hdisplay) {
  wm->priority_mark.full = dfixed_const(10);
 } else {
  a.full = dfixed_const(16);
  wm->priority_mark.full = dfixed_div(estimated_width, a);
  wm->priority_mark.full = dfixed_ceil(wm->priority_mark);
  wm->priority_mark.full = wm->priority_mark_max.full - wm->priority_mark.full;
 }
}
