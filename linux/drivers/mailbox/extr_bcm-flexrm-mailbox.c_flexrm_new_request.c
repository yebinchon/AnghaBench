
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct flexrm_ring {int bd_write_offset; void* bd_base; int lock; int requests_bmap; struct brcm_message** requests; TYPE_1__* mbox; int msg_send_count; scalar_t__ bd_dma_base; scalar_t__ regs; } ;
struct brcm_message {int error; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BD_START_ADDR_DECODE (int) ;
 int EIO ;
 int ENOSPC ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 scalar_t__ RING_BD_READ_PTR ;
 int RING_BD_SIZE ;
 scalar_t__ RING_BD_START_ADDR ;
 int RING_BD_TOGGLE_VALID (long) ;
 int RING_DESC_SIZE ;
 int RING_MAX_REQ_COUNT ;
 int atomic_inc_return (int *) ;
 int bitmap_find_free_region (int ,int ,int ) ;
 int bitmap_release_region (int ,int,int ) ;
 int flexrm_dma_map (int ,struct brcm_message*) ;
 int flexrm_dma_unmap (int ,struct brcm_message*) ;
 int flexrm_estimate_header_desc_count (int) ;
 int flexrm_estimate_nonheader_desc_count (struct brcm_message*) ;
 int flexrm_is_next_table_desc (void*) ;
 int flexrm_sanity_check (struct brcm_message*) ;
 void* flexrm_write_descs (struct brcm_message*,int,int,void*,int ,void*,void*) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int flexrm_new_request(struct flexrm_ring *ring,
    struct brcm_message *batch_msg,
    struct brcm_message *msg)
{
 void *next;
 unsigned long flags;
 u32 val, count, nhcnt;
 u32 read_offset, write_offset;
 bool exit_cleanup = 0;
 int ret = 0, reqid;


 if (!flexrm_sanity_check(msg))
  return -EIO;
 msg->error = 0;


 spin_lock_irqsave(&ring->lock, flags);
 reqid = bitmap_find_free_region(ring->requests_bmap,
     RING_MAX_REQ_COUNT, 0);
 spin_unlock_irqrestore(&ring->lock, flags);
 if (reqid < 0)
  return -ENOSPC;
 ring->requests[reqid] = msg;


 ret = flexrm_dma_map(ring->mbox->dev, msg);
 if (ret < 0) {
  ring->requests[reqid] = ((void*)0);
  spin_lock_irqsave(&ring->lock, flags);
  bitmap_release_region(ring->requests_bmap, reqid, 0);
  spin_unlock_irqrestore(&ring->lock, flags);
  return ret;
 }


 read_offset = readl_relaxed(ring->regs + RING_BD_READ_PTR);
 val = readl_relaxed(ring->regs + RING_BD_START_ADDR);
 read_offset *= RING_DESC_SIZE;
 read_offset += (u32)(BD_START_ADDR_DECODE(val) - ring->bd_dma_base);






 nhcnt = flexrm_estimate_nonheader_desc_count(msg);
 count = flexrm_estimate_header_desc_count(nhcnt) + nhcnt + 1;


 write_offset = ring->bd_write_offset;
 while (count) {
  if (!flexrm_is_next_table_desc(ring->bd_base + write_offset))
   count--;
  write_offset += RING_DESC_SIZE;
  if (write_offset == RING_BD_SIZE)
   write_offset = 0x0;
  if (write_offset == read_offset)
   break;
 }
 if (count) {
  ret = -ENOSPC;
  exit_cleanup = 1;
  goto exit;
 }


 next = flexrm_write_descs(msg, nhcnt, reqid,
   ring->bd_base + ring->bd_write_offset,
   RING_BD_TOGGLE_VALID(ring->bd_write_offset),
   ring->bd_base, ring->bd_base + RING_BD_SIZE);
 if (IS_ERR(next)) {
  ret = PTR_ERR(next);
  exit_cleanup = 1;
  goto exit;
 }


 ring->bd_write_offset = (unsigned long)(next - ring->bd_base);


 atomic_inc_return(&ring->msg_send_count);

exit:

 msg->error = ret;


 if (exit_cleanup) {
  flexrm_dma_unmap(ring->mbox->dev, msg);
  ring->requests[reqid] = ((void*)0);
  spin_lock_irqsave(&ring->lock, flags);
  bitmap_release_region(ring->requests_bmap, reqid, 0);
  spin_unlock_irqrestore(&ring->lock, flags);
 }

 return ret;
}
