
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int comp; int kref; } ;
struct qib_pportdata {int sdma_sw_clean_up_task; int sdma_activelist; int sdma_userpending; scalar_t__ sdma_intrequest; scalar_t__ sdma_descq_added; scalar_t__ sdma_descq_removed; scalar_t__ sdma_descq_head; scalar_t__ sdma_generation; TYPE_1__ sdma_state; int sdma_lock; struct qib_devdata* dd; } ;
struct qib_devdata {int (* f_init_sdma_regs ) (struct qib_pportdata*) ;int (* f_sdma_init_early ) (struct qib_pportdata*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 int alloc_sdma (struct qib_pportdata*) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 int qib_sdma_event_e10_go_hw_start ;
 int qib_sdma_process_event (struct qib_pportdata*,int ) ;
 int qib_sdma_state_s00_hw_down ;
 int qib_teardown_sdma (struct qib_pportdata*) ;
 int sdma_set_state (struct qib_pportdata*,int ) ;
 int sdma_sw_clean_up_task ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct qib_pportdata*) ;
 int stub2 (struct qib_pportdata*) ;
 int tasklet_init (int *,int ,unsigned long) ;

int qib_setup_sdma(struct qib_pportdata *ppd)
{
 struct qib_devdata *dd = ppd->dd;
 unsigned long flags;
 int ret = 0;

 ret = alloc_sdma(ppd);
 if (ret)
  goto bail;


 ppd->dd->f_sdma_init_early(ppd);
 spin_lock_irqsave(&ppd->sdma_lock, flags);
 sdma_set_state(ppd, qib_sdma_state_s00_hw_down);
 spin_unlock_irqrestore(&ppd->sdma_lock, flags);


 kref_init(&ppd->sdma_state.kref);
 init_completion(&ppd->sdma_state.comp);

 ppd->sdma_generation = 0;
 ppd->sdma_descq_head = 0;
 ppd->sdma_descq_removed = 0;
 ppd->sdma_descq_added = 0;

 ppd->sdma_intrequest = 0;
 INIT_LIST_HEAD(&ppd->sdma_userpending);

 INIT_LIST_HEAD(&ppd->sdma_activelist);

 tasklet_init(&ppd->sdma_sw_clean_up_task, sdma_sw_clean_up_task,
  (unsigned long)ppd);

 ret = dd->f_init_sdma_regs(ppd);
 if (ret)
  goto bail_alloc;

 qib_sdma_process_event(ppd, qib_sdma_event_e10_go_hw_start);

 return 0;

bail_alloc:
 qib_teardown_sdma(ppd);
bail:
 return ret;
}
