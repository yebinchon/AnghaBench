
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_ucontext {int pd_in_use; int mm_list_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ocrdma_release_ucontext_pd(struct ocrdma_ucontext *uctx)
{
 mutex_lock(&uctx->mm_list_lock);
 uctx->pd_in_use = 0;
 mutex_unlock(&uctx->mm_list_lock);
}
