
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_cmd {int* data; } ;


 int CMD_COMPL_WAIT ;
 int CMD_COMPL_WAIT_STORE_MASK ;
 int CMD_SET_TYPE (struct iommu_cmd*,int ) ;
 int WARN_ON (int) ;
 int iommu_virt_to_phys (void*) ;
 int lower_32_bits (int) ;
 int memset (struct iommu_cmd*,int ,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void build_completion_wait(struct iommu_cmd *cmd, u64 address)
{
 u64 paddr = iommu_virt_to_phys((void *)address);

 WARN_ON(address & 0x7ULL);

 memset(cmd, 0, sizeof(*cmd));
 cmd->data[0] = lower_32_bits(paddr) | CMD_COMPL_WAIT_STORE_MASK;
 cmd->data[1] = upper_32_bits(paddr);
 cmd->data[2] = 1;
 CMD_SET_TYPE(cmd, CMD_COMPL_WAIT);
}
