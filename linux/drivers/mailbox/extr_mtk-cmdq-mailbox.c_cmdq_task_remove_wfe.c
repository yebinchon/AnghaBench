
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct device {int dummy; } ;
struct cmdq_task {TYPE_3__* pkt; int pa_base; TYPE_2__* cmdq; } ;
struct TYPE_6__ {int* va_base; int cmd_buf_size; } ;
struct TYPE_4__ {struct device* dev; } ;
struct TYPE_5__ {TYPE_1__ mbox; } ;


 scalar_t__ CMDQ_JUMP_BY_OFFSET ;
 int CMDQ_JUMP_PASS ;
 int CMDQ_NUM_CMD (TYPE_3__*) ;
 int DMA_TO_DEVICE ;
 scalar_t__ cmdq_command_is_wfe (int) ;
 int dma_sync_single_for_cpu (struct device*,int ,int ,int ) ;
 int dma_sync_single_for_device (struct device*,int ,int ,int ) ;

__attribute__((used)) static void cmdq_task_remove_wfe(struct cmdq_task *task)
{
 struct device *dev = task->cmdq->mbox.dev;
 u64 *base = task->pkt->va_base;
 int i;

 dma_sync_single_for_cpu(dev, task->pa_base, task->pkt->cmd_buf_size,
    DMA_TO_DEVICE);
 for (i = 0; i < CMDQ_NUM_CMD(task->pkt); i++)
  if (cmdq_command_is_wfe(base[i]))
   base[i] = (u64)CMDQ_JUMP_BY_OFFSET << 32 |
      CMDQ_JUMP_PASS;
 dma_sync_single_for_device(dev, task->pa_base, task->pkt->cmd_buf_size,
       DMA_TO_DEVICE);
}
