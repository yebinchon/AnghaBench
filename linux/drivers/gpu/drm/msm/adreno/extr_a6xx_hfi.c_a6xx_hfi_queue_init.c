
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct a6xx_hfi_queue_header {int type; int status; int size; int rx_watermark; int tx_watermark; int rx_request; scalar_t__ write_index; scalar_t__ read_index; scalar_t__ tx_request; scalar_t__ dropped; scalar_t__ msg_size; int iova; } ;
struct a6xx_hfi_queue {int seqnum; void* data; struct a6xx_hfi_queue_header* header; int lock; } ;


 int SZ_4K ;
 int atomic_set (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void a6xx_hfi_queue_init(struct a6xx_hfi_queue *queue,
  struct a6xx_hfi_queue_header *header, void *virt, u64 iova,
  u32 id)
{
 spin_lock_init(&queue->lock);
 queue->header = header;
 queue->data = virt;
 atomic_set(&queue->seqnum, 0);


 header->iova = iova;
 header->type = 10 << 8 | id;
 header->status = 1;
 header->size = SZ_4K >> 2;
 header->msg_size = 0;
 header->dropped = 0;
 header->rx_watermark = 1;
 header->tx_watermark = 1;
 header->rx_request = 1;
 header->tx_request = 0;
 header->read_index = 0;
 header->write_index = 0;
}
