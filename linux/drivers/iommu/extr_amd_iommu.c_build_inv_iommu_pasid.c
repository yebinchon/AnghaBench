
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct iommu_cmd {int* data; } ;


 int CMD_INV_IOMMU_PAGES ;
 int CMD_INV_IOMMU_PAGES_GN_MASK ;
 int CMD_INV_IOMMU_PAGES_PDE_MASK ;
 int CMD_INV_IOMMU_PAGES_SIZE_MASK ;
 int CMD_SET_TYPE (struct iommu_cmd*,int ) ;
 int lower_32_bits (int) ;
 int memset (struct iommu_cmd*,int ,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void build_inv_iommu_pasid(struct iommu_cmd *cmd, u16 domid, int pasid,
      u64 address, bool size)
{
 memset(cmd, 0, sizeof(*cmd));

 address &= ~(0xfffULL);

 cmd->data[0] = pasid;
 cmd->data[1] = domid;
 cmd->data[2] = lower_32_bits(address);
 cmd->data[3] = upper_32_bits(address);
 cmd->data[2] |= CMD_INV_IOMMU_PAGES_PDE_MASK;
 cmd->data[2] |= CMD_INV_IOMMU_PAGES_GN_MASK;
 if (size)
  cmd->data[2] |= CMD_INV_IOMMU_PAGES_SIZE_MASK;
 CMD_SET_TYPE(cmd, CMD_INV_IOMMU_PAGES);
}
