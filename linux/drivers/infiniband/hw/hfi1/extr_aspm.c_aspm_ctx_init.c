
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_ctxtdata {int aspm_intr_supported; scalar_t__ ctxt; TYPE_1__* dd; int aspm_timer; int aspm_lock; } ;
struct TYPE_2__ {scalar_t__ first_dyn_alloc_ctxt; scalar_t__ aspm_supported; } ;


 scalar_t__ ASPM_MODE_DYNAMIC ;
 int aspm_ctx_timer_function ;
 scalar_t__ aspm_mode ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void aspm_ctx_init(struct hfi1_ctxtdata *rcd)
{
 spin_lock_init(&rcd->aspm_lock);
 timer_setup(&rcd->aspm_timer, aspm_ctx_timer_function, 0);
 rcd->aspm_intr_supported = rcd->dd->aspm_supported &&
  aspm_mode == ASPM_MODE_DYNAMIC &&
  rcd->ctxt < rcd->dd->first_dyn_alloc_ctxt;
}
