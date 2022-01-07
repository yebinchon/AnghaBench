
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct komeda_dev {int aclk; } ;
struct TYPE_5__ {int crtc_clock; } ;
struct TYPE_6__ {TYPE_2__ adjusted_mode; struct drm_crtc* crtc; } ;
struct komeda_crtc_state {TYPE_3__ base; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_4__ {struct komeda_dev* dev_private; } ;


 unsigned long clk_round_rate (int ,unsigned long) ;
 unsigned long komeda_calc_min_aclk_rate (int ,unsigned long) ;
 int to_kcrtc (struct drm_crtc*) ;

unsigned long komeda_crtc_get_aclk(struct komeda_crtc_state *kcrtc_st)
{
 struct drm_crtc *crtc = kcrtc_st->base.crtc;
 struct komeda_dev *mdev = crtc->dev->dev_private;
 unsigned long pxlclk = kcrtc_st->base.adjusted_mode.crtc_clock * 1000;
 unsigned long min_aclk;

 min_aclk = komeda_calc_min_aclk_rate(to_kcrtc(crtc), pxlclk);

 return clk_round_rate(mdev->aclk, min_aclk);
}
