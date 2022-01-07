
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_hfi_queue {int seqnum; } ;
struct a6xx_gmu {int dev; struct a6xx_hfi_queue* queues; } ;


 int DRM_DEV_ERROR (int ,char*,int ,int) ;
 size_t HFI_COMMAND_QUEUE ;
 int HFI_MSG_CMD ;
 int * a6xx_hfi_msg_id ;
 int a6xx_hfi_queue_write (struct a6xx_gmu*,struct a6xx_hfi_queue*,void*,int) ;
 int a6xx_hfi_wait_for_ack (struct a6xx_gmu*,int,int,int*,int) ;
 int atomic_inc_return (int *) ;

__attribute__((used)) static int a6xx_hfi_send_msg(struct a6xx_gmu *gmu, int id,
  void *data, u32 size, u32 *payload, u32 payload_size)
{
 struct a6xx_hfi_queue *queue = &gmu->queues[HFI_COMMAND_QUEUE];
 int ret, dwords = size >> 2;
 u32 seqnum;

 seqnum = atomic_inc_return(&queue->seqnum) % 0xfff;


 *((u32 *) data) = (seqnum << 20) | (HFI_MSG_CMD << 16) |
  (dwords << 8) | id;

 ret = a6xx_hfi_queue_write(gmu, queue, data, dwords);
 if (ret) {
  DRM_DEV_ERROR(gmu->dev, "Unable to send message %s id %d\n",
   a6xx_hfi_msg_id[id], seqnum);
  return ret;
 }

 return a6xx_hfi_wait_for_ack(gmu, id, seqnum, payload, payload_size);
}
