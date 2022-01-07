
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hfi1_ctxtdata {TYPE_2__* dd; } ;
struct TYPE_4__ {scalar_t__ freectxts; scalar_t__ num_user_contexts; } ;
struct TYPE_3__ {int sps_ctxts; } ;


 int aspm_enable_all (TYPE_2__*) ;
 int hfi1_free_ctxt (struct hfi1_ctxtdata*) ;
 int hfi1_mutex ;
 TYPE_1__ hfi1_stats ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void deallocate_ctxt(struct hfi1_ctxtdata *uctxt)
{
 mutex_lock(&hfi1_mutex);
 hfi1_stats.sps_ctxts--;
 if (++uctxt->dd->freectxts == uctxt->dd->num_user_contexts)
  aspm_enable_all(uctxt->dd);
 mutex_unlock(&hfi1_mutex);

 hfi1_free_ctxt(uctxt);
}
