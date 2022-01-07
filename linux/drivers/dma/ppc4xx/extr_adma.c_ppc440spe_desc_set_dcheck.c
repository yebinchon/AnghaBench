
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ppc440spe_adma_desc_slot {struct dma_cdb* hw_desc; } ;
struct ppc440spe_adma_chan {TYPE_1__* device; } ;
struct dma_cdb {int sg2u; int sg2l; int sg3u; int sg3l; } ;
struct TYPE_2__ {int id; } ;


 int BUG () ;


 int iowrite32 (int ,int *) ;

__attribute__((used)) static void ppc440spe_desc_set_dcheck(struct ppc440spe_adma_desc_slot *desc,
    struct ppc440spe_adma_chan *chan, u8 *qword)
{
 struct dma_cdb *dma_hw_desc;

 switch (chan->device->id) {
 case 129:
 case 128:
  dma_hw_desc = desc->hw_desc;
  iowrite32(qword[0], &dma_hw_desc->sg3l);
  iowrite32(qword[4], &dma_hw_desc->sg3u);
  iowrite32(qword[8], &dma_hw_desc->sg2l);
  iowrite32(qword[12], &dma_hw_desc->sg2u);
  break;
 default:
  BUG();
 }
}
