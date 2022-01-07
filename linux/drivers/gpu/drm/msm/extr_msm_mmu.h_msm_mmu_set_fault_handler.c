
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mmu {int (* handler ) (void*,unsigned long,int) ;void* arg; } ;



__attribute__((used)) static inline void msm_mmu_set_fault_handler(struct msm_mmu *mmu, void *arg,
  int (*handler)(void *arg, unsigned long iova, int flags))
{
 mmu->arg = arg;
 mmu->handler = handler;
}
