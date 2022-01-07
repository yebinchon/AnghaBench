
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rcar_du_group {TYPE_3__* planes; struct rcar_du_device* dev; } ;
struct rcar_du_device {int dev; TYPE_4__* info; int ddev; struct rcar_du_crtc* crtcs; } ;
struct drm_crtc {int dummy; } ;
struct rcar_du_crtc {unsigned int mmio_offset; unsigned int index; int dsysr; size_t vsp_pipe; TYPE_2__* vsp; struct rcar_du_group* group; struct rcar_du_device* dev; int vblank_lock; int vblank_wait; int flip_wait; struct clk* extclock; struct clk* clock; struct drm_crtc crtc; } ;
struct platform_device {int dummy; } ;
struct drm_plane {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_8__ {int dpll_mask; int gen; } ;
struct TYPE_7__ {struct drm_plane plane; } ;
struct TYPE_6__ {TYPE_1__* planes; } ;
struct TYPE_5__ {struct drm_plane plane; } ;


 int BIT (unsigned int) ;
 int DSYSR_DRES ;
 int DSYSR_TVM_TVSYNC ;




 int EPROBE_DEFER ;
 unsigned int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int RCAR_DU_FEATURE_CRTC_IRQ_CLOCK ;
 int RCAR_DU_FEATURE_VSP1_SOURCE ;
 int crtc_funcs_gen2 ;
 int crtc_funcs_gen3 ;
 int crtc_helper_funcs ;
 int dev_err (int ,char*,unsigned int,...) ;
 int dev_name (int ) ;
 void* devm_clk_get (int ,char*) ;
 int devm_request_irq (int ,int,int ,unsigned int,int ,struct rcar_du_crtc*) ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (int ,struct drm_crtc*,struct drm_plane*,int *,int *,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int init_waitqueue_head (int *) ;
 int platform_get_irq (struct platform_device*,unsigned int) ;
 int rcar_du_crtc_crc_init (struct rcar_du_crtc*) ;
 int rcar_du_crtc_irq ;
 scalar_t__ rcar_du_has (struct rcar_du_device*,int ) ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,unsigned int) ;
 struct platform_device* to_platform_device (int ) ;

int rcar_du_crtc_create(struct rcar_du_group *rgrp, unsigned int swindex,
   unsigned int hwindex)
{
 static const unsigned int mmio_offsets[] = {
  131, 130, 129, 128
 };

 struct rcar_du_device *rcdu = rgrp->dev;
 struct platform_device *pdev = to_platform_device(rcdu->dev);
 struct rcar_du_crtc *rcrtc = &rcdu->crtcs[swindex];
 struct drm_crtc *crtc = &rcrtc->crtc;
 struct drm_plane *primary;
 unsigned int irqflags;
 struct clk *clk;
 char clk_name[9];
 char *name;
 int irq;
 int ret;


 if (rcar_du_has(rcdu, RCAR_DU_FEATURE_CRTC_IRQ_CLOCK)) {
  sprintf(clk_name, "du.%u", hwindex);
  name = clk_name;
 } else {
  name = ((void*)0);
 }

 rcrtc->clock = devm_clk_get(rcdu->dev, name);
 if (IS_ERR(rcrtc->clock)) {
  dev_err(rcdu->dev, "no clock for DU channel %u\n", hwindex);
  return PTR_ERR(rcrtc->clock);
 }

 sprintf(clk_name, "dclkin.%u", hwindex);
 clk = devm_clk_get(rcdu->dev, clk_name);
 if (!IS_ERR(clk)) {
  rcrtc->extclock = clk;
 } else if (PTR_ERR(clk) == -EPROBE_DEFER) {
  return -EPROBE_DEFER;
 } else if (rcdu->info->dpll_mask & BIT(hwindex)) {




  ret = PTR_ERR(clk);
  dev_err(rcdu->dev, "can't get dclkin.%u: %d\n", hwindex, ret);
  return ret;
 }

 init_waitqueue_head(&rcrtc->flip_wait);
 init_waitqueue_head(&rcrtc->vblank_wait);
 spin_lock_init(&rcrtc->vblank_lock);

 rcrtc->dev = rcdu;
 rcrtc->group = rgrp;
 rcrtc->mmio_offset = mmio_offsets[hwindex];
 rcrtc->index = hwindex;
 rcrtc->dsysr = (rcrtc->index % 2 ? 0 : DSYSR_DRES) | DSYSR_TVM_TVSYNC;

 if (rcar_du_has(rcdu, RCAR_DU_FEATURE_VSP1_SOURCE))
  primary = &rcrtc->vsp->planes[rcrtc->vsp_pipe].plane;
 else
  primary = &rgrp->planes[swindex % 2].plane;

 ret = drm_crtc_init_with_planes(rcdu->ddev, crtc, primary, ((void*)0),
     rcdu->info->gen <= 2 ?
     &crtc_funcs_gen2 : &crtc_funcs_gen3,
     ((void*)0));
 if (ret < 0)
  return ret;

 drm_crtc_helper_add(crtc, &crtc_helper_funcs);


 drm_crtc_vblank_off(crtc);


 if (rcar_du_has(rcdu, RCAR_DU_FEATURE_CRTC_IRQ_CLOCK)) {

  irq = platform_get_irq(pdev, swindex);
  irqflags = 0;
 } else {
  irq = platform_get_irq(pdev, 0);
  irqflags = IRQF_SHARED;
 }

 if (irq < 0) {
  dev_err(rcdu->dev, "no IRQ for CRTC %u\n", swindex);
  return irq;
 }

 ret = devm_request_irq(rcdu->dev, irq, rcar_du_crtc_irq, irqflags,
          dev_name(rcdu->dev), rcrtc);
 if (ret < 0) {
  dev_err(rcdu->dev,
   "failed to register IRQ for CRTC %u\n", swindex);
  return ret;
 }

 rcar_du_crtc_crc_init(rcrtc);

 return 0;
}
