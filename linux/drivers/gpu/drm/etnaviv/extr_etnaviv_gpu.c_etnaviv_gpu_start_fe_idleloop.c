
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct etnaviv_gpu {TYPE_1__* mmu_context; int buffer; } ;
struct TYPE_2__ {int cmdbuf_mapping; } ;


 int etnaviv_buffer_init (struct etnaviv_gpu*) ;
 int etnaviv_cmdbuf_get_va (int *,int *) ;
 int etnaviv_gpu_start_fe (struct etnaviv_gpu*,int ,int ) ;
 int etnaviv_iommu_restore (struct etnaviv_gpu*,TYPE_1__*) ;

__attribute__((used)) static void etnaviv_gpu_start_fe_idleloop(struct etnaviv_gpu *gpu)
{
 u32 address = etnaviv_cmdbuf_get_va(&gpu->buffer,
    &gpu->mmu_context->cmdbuf_mapping);
 u16 prefetch;


 etnaviv_iommu_restore(gpu, gpu->mmu_context);


 prefetch = etnaviv_buffer_init(gpu);

 etnaviv_gpu_start_fe(gpu, address, prefetch);
}
