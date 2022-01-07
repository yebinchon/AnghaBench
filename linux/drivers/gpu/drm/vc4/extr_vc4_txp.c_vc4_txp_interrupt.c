
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct vc4_txp {TYPE_3__ connector; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int crtc; } ;


 int IRQ_HANDLED ;
 int TXP_DST_CTRL ;
 int TXP_EI ;
 int TXP_READ (int ) ;
 int TXP_WRITE (int ,int) ;
 int drm_writeback_signal_completion (TYPE_3__*,int ) ;
 int to_vc4_crtc (int ) ;
 int vc4_crtc_handle_vblank (int ) ;

__attribute__((used)) static irqreturn_t vc4_txp_interrupt(int irq, void *data)
{
 struct vc4_txp *txp = data;

 TXP_WRITE(TXP_DST_CTRL, TXP_READ(TXP_DST_CTRL) & ~TXP_EI);
 vc4_crtc_handle_vblank(to_vc4_crtc(txp->connector.base.state->crtc));
 drm_writeback_signal_completion(&txp->connector, 0);

 return IRQ_HANDLED;
}
