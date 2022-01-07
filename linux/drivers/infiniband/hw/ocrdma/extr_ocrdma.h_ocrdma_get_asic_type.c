
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dev_family; int pdev; } ;
struct ocrdma_dev {int asic_id; TYPE_1__ nic_info; } ;


 int OCRDMA_SLI_ASIC_GEN_NUM_MASK ;
 int OCRDMA_SLI_ASIC_GEN_NUM_SHIFT ;
 int OCRDMA_SLI_ASIC_ID_OFFSET ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static inline u8 ocrdma_get_asic_type(struct ocrdma_dev *dev)
{
 if (dev->nic_info.dev_family == 0xF && !dev->asic_id) {
  pci_read_config_dword(
   dev->nic_info.pdev,
   OCRDMA_SLI_ASIC_ID_OFFSET, &dev->asic_id);
 }

 return (dev->asic_id & OCRDMA_SLI_ASIC_GEN_NUM_MASK) >>
    OCRDMA_SLI_ASIC_GEN_NUM_SHIFT;
}
