
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int exec_state; int * mmu_context; int lock; scalar_t__ initialized; } ;


 int etnaviv_buffer_end (struct etnaviv_gpu*) ;
 int etnaviv_gpu_clk_disable (struct etnaviv_gpu*) ;
 int etnaviv_gpu_wait_idle (struct etnaviv_gpu*,int) ;
 int etnaviv_iommu_context_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int etnaviv_gpu_hw_suspend(struct etnaviv_gpu *gpu)
{
 if (gpu->initialized && gpu->mmu_context) {

  mutex_lock(&gpu->lock);
  etnaviv_buffer_end(gpu);
  mutex_unlock(&gpu->lock);






  etnaviv_gpu_wait_idle(gpu, 100);

  etnaviv_iommu_context_put(gpu->mmu_context);
  gpu->mmu_context = ((void*)0);
 }

 gpu->exec_state = -1;

 return etnaviv_gpu_clk_disable(gpu);
}
