
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* pci_dev; } ;
struct icp_firml_dram_desc {unsigned int dram_size; int dram_bus_addr; void* dram_base_addr_v; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int *,unsigned int,int *,int ) ;

__attribute__((used)) static int qat_uclo_simg_alloc(struct icp_qat_fw_loader_handle *handle,
          struct icp_firml_dram_desc *dram_desc,
          unsigned int size)
{
 void *vptr;
 dma_addr_t ptr;

 vptr = dma_alloc_coherent(&handle->pci_dev->dev,
      size, &ptr, GFP_KERNEL);
 if (!vptr)
  return -ENOMEM;
 dram_desc->dram_base_addr_v = vptr;
 dram_desc->dram_bus_addr = ptr;
 dram_desc->dram_size = size;
 return 0;
}
