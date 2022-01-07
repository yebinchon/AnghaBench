
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int cmd_buf_tail; scalar_t__ mmio_base; int * cmd_buf; } ;


 int CMD_BUFFER_SIZE ;
 scalar_t__ MMIO_CMD_TAIL_OFFSET ;
 int memcpy (int *,struct iommu_cmd*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void copy_cmd_to_buffer(struct amd_iommu *iommu,
          struct iommu_cmd *cmd)
{
 u8 *target;

 target = iommu->cmd_buf + iommu->cmd_buf_tail;

 iommu->cmd_buf_tail += sizeof(*cmd);
 iommu->cmd_buf_tail %= CMD_BUFFER_SIZE;


 memcpy(target, cmd, sizeof(*cmd));


 writel(iommu->cmd_buf_tail, iommu->mmio_base + MMIO_CMD_TAIL_OFFSET);
}
