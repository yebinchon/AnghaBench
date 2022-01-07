
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct axi_dmac_sg {scalar_t__ id; int schedule_when_free; scalar_t__ partial_len; } ;
struct TYPE_3__ {int node; } ;
struct axi_dmac_desc {size_t num_completed; size_t num_sgs; TYPE_1__ vdesc; scalar_t__ cyclic; struct axi_dmac_sg* sg; } ;
struct axi_dmac_chan {scalar_t__ hw_partial_xfer; } ;


 unsigned int AXI_DMAC_FLAG_PARTIAL_XFER_DONE ;
 scalar_t__ AXI_DMAC_SG_UNUSED ;
 unsigned int BIT (scalar_t__) ;
 struct axi_dmac_desc* axi_dmac_active_desc (struct axi_dmac_chan*) ;
 int axi_dmac_compute_residue (struct axi_dmac_chan*,struct axi_dmac_desc*) ;
 int axi_dmac_dequeue_partial_xfers (struct axi_dmac_chan*) ;
 int list_del (int *) ;
 int vchan_cookie_complete (TYPE_1__*) ;
 int vchan_cyclic_callback (TYPE_1__*) ;

__attribute__((used)) static bool axi_dmac_transfer_done(struct axi_dmac_chan *chan,
 unsigned int completed_transfers)
{
 struct axi_dmac_desc *active;
 struct axi_dmac_sg *sg;
 bool start_next = 0;

 active = axi_dmac_active_desc(chan);
 if (!active)
  return 0;

 if (chan->hw_partial_xfer &&
     (completed_transfers & AXI_DMAC_FLAG_PARTIAL_XFER_DONE))
  axi_dmac_dequeue_partial_xfers(chan);

 do {
  sg = &active->sg[active->num_completed];
  if (sg->id == AXI_DMAC_SG_UNUSED)
   break;
  if (!(BIT(sg->id) & completed_transfers))
   break;
  active->num_completed++;
  sg->id = AXI_DMAC_SG_UNUSED;
  if (sg->schedule_when_free) {
   sg->schedule_when_free = 0;
   start_next = 1;
  }

  if (sg->partial_len)
   axi_dmac_compute_residue(chan, active);

  if (active->cyclic)
   vchan_cyclic_callback(&active->vdesc);

  if (active->num_completed == active->num_sgs ||
      sg->partial_len) {
   if (active->cyclic) {
    active->num_completed = 0;
   } else {
    list_del(&active->vdesc.node);
    vchan_cookie_complete(&active->vdesc);
    active = axi_dmac_active_desc(chan);
   }
  }
 } while (active);

 return start_next;
}
