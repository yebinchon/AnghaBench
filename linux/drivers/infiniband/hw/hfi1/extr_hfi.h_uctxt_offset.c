
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_ctxtdata {unsigned long ctxt; TYPE_1__* dd; } ;
struct TYPE_2__ {unsigned long first_dyn_alloc_ctxt; } ;


 unsigned long HFI1_MAX_SHARED_CTXTS ;

__attribute__((used)) static inline unsigned long uctxt_offset(struct hfi1_ctxtdata *uctxt)
{
 return (uctxt->ctxt - uctxt->dd->first_dyn_alloc_ctxt) *
  HFI1_MAX_SHARED_CTXTS;
}
