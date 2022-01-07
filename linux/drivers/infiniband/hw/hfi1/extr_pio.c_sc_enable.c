
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct send_context {int hw_context; int alloc_lock; int flags; int sw_index; scalar_t__ sr_tail; scalar_t__ sr_head; scalar_t__ fill_wrap; scalar_t__ fill; scalar_t__ alloc_free; scalar_t__ free; scalar_t__* hw_free; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int sc_init_lock; } ;


 int CTRL ;
 int CTRL_CTXT_ENABLE_SMASK ;
 int EINVAL ;
 int ERR_CLEAR ;
 int ERR_STATUS ;
 int SC (int ) ;
 int SCF_ENABLED ;
 int SEND_PIO_INIT_CTXT ;
 int SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_MASK ;
 int SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_SHIFT ;
 int SEND_PIO_INIT_CTXT_PIO_SINGLE_CTXT_INIT_SMASK ;
 int dd_dev_err (struct hfi1_devdata*,char*,int ,int,int) ;
 int pio_init_wait_progress (struct hfi1_devdata*) ;
 int read_kctxt_csr (struct hfi1_devdata*,int,int) ;
 int reset_buffers_allocated (struct send_context*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;
 int write_kctxt_csr (struct hfi1_devdata*,int,int,int) ;

int sc_enable(struct send_context *sc)
{
 u64 sc_ctrl, reg, pio;
 struct hfi1_devdata *dd;
 unsigned long flags;
 int ret = 0;

 if (!sc)
  return -EINVAL;
 dd = sc->dd;
 spin_lock_irqsave(&sc->alloc_lock, flags);
 sc_ctrl = read_kctxt_csr(dd, sc->hw_context, SC(CTRL));
 if ((sc_ctrl & SC(CTRL_CTXT_ENABLE_SMASK)))
  goto unlock;



 *sc->hw_free = 0;
 sc->free = 0;
 sc->alloc_free = 0;
 sc->fill = 0;
 sc->fill_wrap = 0;
 sc->sr_head = 0;
 sc->sr_tail = 0;
 sc->flags = 0;

 reset_buffers_allocated(sc);







 reg = read_kctxt_csr(dd, sc->hw_context, SC(ERR_STATUS));
 if (reg)
  write_kctxt_csr(dd, sc->hw_context, SC(ERR_CLEAR), reg);





 spin_lock(&dd->sc_init_lock);







 pio = ((sc->hw_context & SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_MASK) <<
        SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_SHIFT) |
  SEND_PIO_INIT_CTXT_PIO_SINGLE_CTXT_INIT_SMASK;
 write_csr(dd, SEND_PIO_INIT_CTXT, pio);




 udelay(2);
 ret = pio_init_wait_progress(dd);
 spin_unlock(&dd->sc_init_lock);
 if (ret) {
  dd_dev_err(dd,
      "sctxt%u(%u): Context not enabled due to init failure %d\n",
      sc->sw_index, sc->hw_context, ret);
  goto unlock;
 }




 sc_ctrl |= SC(CTRL_CTXT_ENABLE_SMASK);
 write_kctxt_csr(dd, sc->hw_context, SC(CTRL), sc_ctrl);




 read_kctxt_csr(dd, sc->hw_context, SC(CTRL));
 sc->flags |= SCF_ENABLED;

unlock:
 spin_unlock_irqrestore(&sc->alloc_lock, flags);

 return ret;
}
