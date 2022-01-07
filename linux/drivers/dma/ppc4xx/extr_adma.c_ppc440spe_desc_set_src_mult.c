
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u32 ;
struct xor_cb {unsigned char sg1u; unsigned char sg2u; unsigned char sg3u; } ;
struct ppc440spe_adma_desc_slot {struct xor_cb* hw_desc; } ;
struct ppc440spe_adma_chan {TYPE_1__* device; } ;
struct dma_cdb {unsigned char sg1u; unsigned char sg2u; unsigned char sg3u; } ;
struct TYPE_2__ {int id; } ;


 int BUG () ;






 unsigned char cpu_to_le32 (unsigned char) ;

__attribute__((used)) static void ppc440spe_desc_set_src_mult(struct ppc440spe_adma_desc_slot *desc,
   struct ppc440spe_adma_chan *chan, u32 mult_index,
   int sg_index, unsigned char mult_value)
{
 struct dma_cdb *dma_hw_desc;
 struct xor_cb *xor_hw_desc;
 u32 *psgu;

 switch (chan->device->id) {
 case 130:
 case 129:
  dma_hw_desc = desc->hw_desc;

  switch (sg_index) {



  case 131:
   psgu = &dma_hw_desc->sg1u;
   break;



  case 133:
   psgu = &dma_hw_desc->sg2u;
   break;
  case 132:
   psgu = &dma_hw_desc->sg3u;
   break;
  default:
   BUG();
  }

  *psgu |= cpu_to_le32(mult_value << mult_index);
  break;
 case 128:
  xor_hw_desc = desc->hw_desc;
  break;
 default:
  BUG();
 }
}
