
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmaengine_result {unsigned int residue; int result; } ;
struct axi_dmac_sg {unsigned int partial_len; } ;
struct TYPE_2__ {struct dmaengine_result tx_result; } ;
struct axi_dmac_desc {int num_completed; unsigned int num_sgs; struct axi_dmac_sg* sg; TYPE_1__ vdesc; } ;
struct axi_dmac_chan {int dummy; } ;


 int DMA_TRANS_NOERROR ;
 unsigned int axi_dmac_total_sg_bytes (struct axi_dmac_chan*,struct axi_dmac_sg*) ;

__attribute__((used)) static void axi_dmac_compute_residue(struct axi_dmac_chan *chan,
 struct axi_dmac_desc *active)
{
 struct dmaengine_result *rslt = &active->vdesc.tx_result;
 unsigned int start = active->num_completed - 1;
 struct axi_dmac_sg *sg;
 unsigned int i, total;

 rslt->result = DMA_TRANS_NOERROR;
 rslt->residue = 0;





 for (i = start; i < active->num_sgs; i++) {
  sg = &active->sg[i];
  total = axi_dmac_total_sg_bytes(chan, sg);
  rslt->residue += (total - sg->partial_len);
 }
}
