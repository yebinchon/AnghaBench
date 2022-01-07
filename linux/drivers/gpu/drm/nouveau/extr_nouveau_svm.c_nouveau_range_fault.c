
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_svmm {TYPE_1__* mm; int mirror; } ;
struct hmm_range {unsigned long pfn_flags_mask; scalar_t__ default_flags; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int EBUSY ;
 int HMM_RANGE_DEFAULT_TIMEOUT ;
 long hmm_range_fault (struct hmm_range*,int ) ;
 long hmm_range_register (struct hmm_range*,int *) ;
 int hmm_range_unregister (struct hmm_range*) ;
 int hmm_range_wait_until_valid (struct hmm_range*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static int
nouveau_range_fault(struct nouveau_svmm *svmm, struct hmm_range *range)
{
 long ret;

 range->default_flags = 0;
 range->pfn_flags_mask = -1UL;

 ret = hmm_range_register(range, &svmm->mirror);
 if (ret) {
  up_read(&svmm->mm->mmap_sem);
  return (int)ret;
 }

 if (!hmm_range_wait_until_valid(range, HMM_RANGE_DEFAULT_TIMEOUT)) {
  up_read(&svmm->mm->mmap_sem);
  return -EBUSY;
 }

 ret = hmm_range_fault(range, 0);
 if (ret <= 0) {
  if (ret == 0)
   ret = -EBUSY;
  up_read(&svmm->mm->mmap_sem);
  hmm_range_unregister(range);
  return ret;
 }
 return 0;
}
