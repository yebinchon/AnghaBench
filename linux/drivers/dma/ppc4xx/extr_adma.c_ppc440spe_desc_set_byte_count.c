
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xor_cb {int cbbc; int cnt; } ;
struct ppc440spe_adma_desc_slot {struct xor_cb* hw_desc; } ;
struct ppc440spe_adma_chan {TYPE_1__* device; } ;
struct dma_cdb {int cbbc; int cnt; } ;
struct TYPE_2__ {int id; } ;





 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ppc440spe_desc_set_byte_count(struct ppc440spe_adma_desc_slot *desc,
    struct ppc440spe_adma_chan *chan,
    u32 byte_count)
{
 struct dma_cdb *dma_hw_desc;
 struct xor_cb *xor_hw_desc;

 switch (chan->device->id) {
 case 130:
 case 129:
  dma_hw_desc = desc->hw_desc;
  dma_hw_desc->cnt = cpu_to_le32(byte_count);
  break;
 case 128:
  xor_hw_desc = desc->hw_desc;
  xor_hw_desc->cbbc = byte_count;
  break;
 }
}
