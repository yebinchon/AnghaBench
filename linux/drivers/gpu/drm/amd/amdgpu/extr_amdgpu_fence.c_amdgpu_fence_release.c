
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int rcu; } ;


 int amdgpu_fence_free ;
 int call_rcu (int *,int ) ;

__attribute__((used)) static void amdgpu_fence_release(struct dma_fence *f)
{
 call_rcu(&f->rcu, amdgpu_fence_free);
}
