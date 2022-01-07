
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct send_context {size_t sw_index; size_t hw_context; int buffers_allocated; struct send_context* sr; int halt_work; int piowait; struct hfi1_devdata* dd; int flags; } ;
struct hfi1_devdata {int sc_lock; TYPE_1__* send_contexts; } ;
struct TYPE_2__ {int * sc; } ;


 int CHECK_ENABLE ;
 int CHECK_OPCODE ;
 int CHECK_PARTITION_KEY ;
 int CREDIT_CTRL ;
 int CREDIT_RETURN_ADDR ;
 int CTRL ;
 int ERR_MASK ;
 int SC (int ) ;
 int SCF_IN_FREE ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int flush_work (int *) ;
 int free_percpu (int ) ;
 int kfree (struct send_context*) ;
 int list_empty (int *) ;
 int sc_disable (struct send_context*) ;
 int sc_hw_free (struct hfi1_devdata*,size_t,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_kctxt_csr (struct hfi1_devdata*,size_t,int ,int ) ;

void sc_free(struct send_context *sc)
{
 struct hfi1_devdata *dd;
 unsigned long flags;
 u32 sw_index;
 u32 hw_context;

 if (!sc)
  return;

 sc->flags |= SCF_IN_FREE;
 dd = sc->dd;
 if (!list_empty(&sc->piowait))
  dd_dev_err(dd, "piowait list not empty!\n");
 sw_index = sc->sw_index;
 hw_context = sc->hw_context;
 sc_disable(sc);
 flush_work(&sc->halt_work);

 spin_lock_irqsave(&dd->sc_lock, flags);
 dd->send_contexts[sw_index].sc = ((void*)0);


 write_kctxt_csr(dd, hw_context, SC(CTRL), 0);
 write_kctxt_csr(dd, hw_context, SC(CHECK_ENABLE), 0);
 write_kctxt_csr(dd, hw_context, SC(ERR_MASK), 0);
 write_kctxt_csr(dd, hw_context, SC(CHECK_PARTITION_KEY), 0);
 write_kctxt_csr(dd, hw_context, SC(CHECK_OPCODE), 0);
 write_kctxt_csr(dd, hw_context, SC(CREDIT_RETURN_ADDR), 0);
 write_kctxt_csr(dd, hw_context, SC(CREDIT_CTRL), 0);


 sc_hw_free(dd, sw_index, hw_context);
 spin_unlock_irqrestore(&dd->sc_lock, flags);

 kfree(sc->sr);
 free_percpu(sc->buffers_allocated);
 kfree(sc);
}
