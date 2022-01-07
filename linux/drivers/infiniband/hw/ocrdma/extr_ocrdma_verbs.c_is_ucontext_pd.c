
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_ucontext {struct ocrdma_pd* cntxt_pd; } ;
struct ocrdma_pd {int dummy; } ;



__attribute__((used)) static inline int is_ucontext_pd(struct ocrdma_ucontext *uctx,
     struct ocrdma_pd *pd)
{
 return (uctx->cntxt_pd == pd);
}
