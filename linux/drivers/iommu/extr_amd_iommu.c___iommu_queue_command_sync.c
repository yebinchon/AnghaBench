
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int cmd_buf_tail; int cmd_buf_head; int need_sync; scalar_t__ mmio_base; } ;


 int CMD_BUFFER_SIZE ;
 int EIO ;
 unsigned int LOOP_TIMEOUT ;
 scalar_t__ MMIO_CMD_HEAD_OFFSET ;
 int copy_cmd_to_buffer (struct amd_iommu*,struct iommu_cmd*) ;
 int pr_err (char*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int __iommu_queue_command_sync(struct amd_iommu *iommu,
          struct iommu_cmd *cmd,
          bool sync)
{
 unsigned int count = 0;
 u32 left, next_tail;

 next_tail = (iommu->cmd_buf_tail + sizeof(*cmd)) % CMD_BUFFER_SIZE;
again:
 left = (iommu->cmd_buf_head - next_tail) % CMD_BUFFER_SIZE;

 if (left <= 0x20) {

  if (count++) {
   if (count == LOOP_TIMEOUT) {
    pr_err("Command buffer timeout\n");
    return -EIO;
   }

   udelay(1);
  }


  iommu->cmd_buf_head = readl(iommu->mmio_base +
         MMIO_CMD_HEAD_OFFSET);

  goto again;
 }

 copy_cmd_to_buffer(iommu, cmd);


 iommu->need_sync = sync;

 return 0;
}
