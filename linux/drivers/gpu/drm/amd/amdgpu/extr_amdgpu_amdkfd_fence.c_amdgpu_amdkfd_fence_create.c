
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mm_struct {int dummy; } ;
struct amdgpu_amdkfd_fence {int lock; int base; int timeline_name; struct mm_struct* mm; } ;


 int GFP_KERNEL ;
 int amdkfd_fence_ops ;
 int atomic_inc_return (int *) ;
 int current ;
 int dma_fence_init (int *,int *,int *,int ,int ) ;
 int fence_seq ;
 int get_task_comm (int ,int ) ;
 struct amdgpu_amdkfd_fence* kzalloc (int,int ) ;
 int mmgrab (struct mm_struct*) ;
 int spin_lock_init (int *) ;

struct amdgpu_amdkfd_fence *amdgpu_amdkfd_fence_create(u64 context,
             struct mm_struct *mm)
{
 struct amdgpu_amdkfd_fence *fence;

 fence = kzalloc(sizeof(*fence), GFP_KERNEL);
 if (fence == ((void*)0))
  return ((void*)0);


 mmgrab(mm);
 fence->mm = mm;
 get_task_comm(fence->timeline_name, current);
 spin_lock_init(&fence->lock);

 dma_fence_init(&fence->base, &amdkfd_fence_ops, &fence->lock,
     context, atomic_inc_return(&fence_seq));

 return fence;
}
