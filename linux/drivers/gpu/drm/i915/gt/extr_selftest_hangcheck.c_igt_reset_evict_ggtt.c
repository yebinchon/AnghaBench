
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gt {TYPE_1__* ggtt; } ;
struct TYPE_2__ {int vm; } ;


 int EXEC_OBJECT_WRITE ;
 int __igt_reset_evict_vma (struct intel_gt*,int *,int ,int ) ;
 int evict_vma ;

__attribute__((used)) static int igt_reset_evict_ggtt(void *arg)
{
 struct intel_gt *gt = arg;

 return __igt_reset_evict_vma(gt, &gt->ggtt->vm,
         evict_vma, EXEC_OBJECT_WRITE);
}
