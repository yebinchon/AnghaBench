
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rcar_du_device {TYPE_1__* info; } ;
struct rcar_du_crtc {scalar_t__ vblank_count; int crtc; int vblank_lock; int vblank_wait; struct rcar_du_device* dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int gen; } ;


 int DSRCR ;
 int DSRCR_MASK ;
 int DSSR ;
 int DSSR_VBK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int drm_crtc_handle_vblank (int *) ;
 int rcar_du_crtc_finish_page_flip (struct rcar_du_crtc*) ;
 int rcar_du_crtc_read (struct rcar_du_crtc*,int ) ;
 int rcar_du_crtc_write (struct rcar_du_crtc*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t rcar_du_crtc_irq(int irq, void *arg)
{
 struct rcar_du_crtc *rcrtc = arg;
 struct rcar_du_device *rcdu = rcrtc->dev;
 irqreturn_t ret = IRQ_NONE;
 u32 status;

 spin_lock(&rcrtc->vblank_lock);

 status = rcar_du_crtc_read(rcrtc, DSSR);
 rcar_du_crtc_write(rcrtc, DSRCR, status & DSRCR_MASK);

 if (status & DSSR_VBK) {





  if (rcrtc->vblank_count) {
   if (--rcrtc->vblank_count == 0)
    wake_up(&rcrtc->vblank_wait);
  }
 }

 spin_unlock(&rcrtc->vblank_lock);

 if (status & DSSR_VBK) {
  if (rcdu->info->gen < 3) {
   drm_crtc_handle_vblank(&rcrtc->crtc);
   rcar_du_crtc_finish_page_flip(rcrtc);
  }

  ret = IRQ_HANDLED;
 }

 return ret;
}
