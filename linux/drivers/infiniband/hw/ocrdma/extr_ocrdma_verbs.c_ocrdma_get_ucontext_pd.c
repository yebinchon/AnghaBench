
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_ucontext {int pd_in_use; int mm_list_lock; struct ocrdma_pd* cntxt_pd; } ;
struct ocrdma_pd {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ocrdma_pd *ocrdma_get_ucontext_pd(struct ocrdma_ucontext *uctx)
{
 struct ocrdma_pd *pd = ((void*)0);

 mutex_lock(&uctx->mm_list_lock);
 if (!uctx->pd_in_use) {
  uctx->pd_in_use = 1;
  pd = uctx->cntxt_pd;
 }
 mutex_unlock(&uctx->mm_list_lock);

 return pd;
}
