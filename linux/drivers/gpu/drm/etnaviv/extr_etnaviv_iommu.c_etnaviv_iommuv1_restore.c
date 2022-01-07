
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct etnaviv_iommuv1_context {scalar_t__ pgtable_dma; } ;
struct etnaviv_iommu_context {TYPE_1__* global; } ;
struct etnaviv_gpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ memory_base; } ;


 int VIVS_MC_MEMORY_BASE_ADDR_FE ;
 int VIVS_MC_MEMORY_BASE_ADDR_PE ;
 int VIVS_MC_MEMORY_BASE_ADDR_PEZ ;
 int VIVS_MC_MEMORY_BASE_ADDR_RA ;
 int VIVS_MC_MEMORY_BASE_ADDR_TX ;
 int VIVS_MC_MMU_FE_PAGE_TABLE ;
 int VIVS_MC_MMU_PEZ_PAGE_TABLE ;
 int VIVS_MC_MMU_PE_PAGE_TABLE ;
 int VIVS_MC_MMU_RA_PAGE_TABLE ;
 int VIVS_MC_MMU_TX_PAGE_TABLE ;
 int gpu_write (struct etnaviv_gpu*,int ,scalar_t__) ;
 struct etnaviv_iommuv1_context* to_v1_context (struct etnaviv_iommu_context*) ;

__attribute__((used)) static void etnaviv_iommuv1_restore(struct etnaviv_gpu *gpu,
        struct etnaviv_iommu_context *context)
{
 struct etnaviv_iommuv1_context *v1_context = to_v1_context(context);
 u32 pgtable;


 gpu_write(gpu, VIVS_MC_MEMORY_BASE_ADDR_RA, context->global->memory_base);
 gpu_write(gpu, VIVS_MC_MEMORY_BASE_ADDR_FE, context->global->memory_base);
 gpu_write(gpu, VIVS_MC_MEMORY_BASE_ADDR_TX, context->global->memory_base);
 gpu_write(gpu, VIVS_MC_MEMORY_BASE_ADDR_PEZ, context->global->memory_base);
 gpu_write(gpu, VIVS_MC_MEMORY_BASE_ADDR_PE, context->global->memory_base);


 pgtable = (u32)v1_context->pgtable_dma;

 gpu_write(gpu, VIVS_MC_MMU_FE_PAGE_TABLE, pgtable);
 gpu_write(gpu, VIVS_MC_MMU_TX_PAGE_TABLE, pgtable);
 gpu_write(gpu, VIVS_MC_MMU_PE_PAGE_TABLE, pgtable);
 gpu_write(gpu, VIVS_MC_MMU_PEZ_PAGE_TABLE, pgtable);
 gpu_write(gpu, VIVS_MC_MMU_RA_PAGE_TABLE, pgtable);
}
