
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct mbox_chan {int dummy; } ;
struct flexrm_ring {size_t num; size_t cmpl_read_offset; int msg_cmpl_count; TYPE_2__* mbox; int lock; int requests_bmap; struct brcm_message** requests; scalar_t__ cmpl_base; scalar_t__ regs; } ;
struct brcm_message {int error; } ;
struct TYPE_3__ {struct mbox_chan* chans; } ;
struct TYPE_4__ {int dev; TYPE_1__ controller; } ;


 size_t RING_CMPL_SIZE ;
 scalar_t__ RING_CMPL_WRITE_PTR ;
 size_t RING_DESC_SIZE ;
 int atomic_inc_return (int *) ;
 int bitmap_release_region (int ,size_t,int ) ;
 int dev_warn (int ,char*,size_t,unsigned long,...) ;
 int flexrm_cmpl_desc_to_error (scalar_t__) ;
 size_t flexrm_cmpl_desc_to_reqid (scalar_t__) ;
 int flexrm_dma_unmap (int ,struct brcm_message*) ;
 int mbox_chan_received_data (struct mbox_chan*,struct brcm_message*) ;
 size_t readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int flexrm_process_completions(struct flexrm_ring *ring)
{
 u64 desc;
 int err, count = 0;
 unsigned long flags;
 struct brcm_message *msg = ((void*)0);
 u32 reqid, cmpl_read_offset, cmpl_write_offset;
 struct mbox_chan *chan = &ring->mbox->controller.chans[ring->num];

 spin_lock_irqsave(&ring->lock, flags);
 cmpl_write_offset = readl_relaxed(ring->regs + RING_CMPL_WRITE_PTR);
 cmpl_write_offset *= RING_DESC_SIZE;
 cmpl_read_offset = ring->cmpl_read_offset;
 ring->cmpl_read_offset = cmpl_write_offset;

 spin_unlock_irqrestore(&ring->lock, flags);


 reqid = 0;
 while (cmpl_read_offset != cmpl_write_offset) {

  desc = *((u64 *)(ring->cmpl_base + cmpl_read_offset));


  cmpl_read_offset += RING_DESC_SIZE;
  if (cmpl_read_offset == RING_CMPL_SIZE)
   cmpl_read_offset = 0;


  err = flexrm_cmpl_desc_to_error(desc);
  if (err < 0) {
   dev_warn(ring->mbox->dev,
   "ring%d got completion desc=0x%lx with error %d\n",
   ring->num, (unsigned long)desc, err);
  }


  reqid = flexrm_cmpl_desc_to_reqid(desc);


  msg = ring->requests[reqid];
  if (!msg) {
   dev_warn(ring->mbox->dev,
   "ring%d null msg pointer for completion desc=0x%lx\n",
   ring->num, (unsigned long)desc);
   continue;
  }


  ring->requests[reqid] = ((void*)0);
  spin_lock_irqsave(&ring->lock, flags);
  bitmap_release_region(ring->requests_bmap, reqid, 0);
  spin_unlock_irqrestore(&ring->lock, flags);


  flexrm_dma_unmap(ring->mbox->dev, msg);


  msg->error = err;
  mbox_chan_received_data(chan, msg);


  atomic_inc_return(&ring->msg_cmpl_count);
  count++;
 }

 return count;
}
