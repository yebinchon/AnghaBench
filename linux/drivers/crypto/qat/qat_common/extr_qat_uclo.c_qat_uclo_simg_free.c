
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* pci_dev; } ;
struct icp_firml_dram_desc {int dram_bus_addr; int dram_base_addr_v; scalar_t__ dram_size; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,size_t,int ,int ) ;
 int memset (struct icp_firml_dram_desc*,int ,int) ;

__attribute__((used)) static void qat_uclo_simg_free(struct icp_qat_fw_loader_handle *handle,
          struct icp_firml_dram_desc *dram_desc)
{
 dma_free_coherent(&handle->pci_dev->dev,
     (size_t)(dram_desc->dram_size),
     (dram_desc->dram_base_addr_v),
     dram_desc->dram_bus_addr);
 memset(dram_desc, 0, sizeof(*dram_desc));
}
