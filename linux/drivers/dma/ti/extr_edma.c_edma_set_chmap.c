
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_chan {int ch_num; struct edma_cc* ecc; } ;
struct edma_cc {scalar_t__ chmap_exist; } ;


 int EDMA_CHAN_SLOT (int) ;
 int EDMA_DCHMAP ;
 int edma_write_array (struct edma_cc*,int ,int,int) ;

__attribute__((used)) static void edma_set_chmap(struct edma_chan *echan, int slot)
{
 struct edma_cc *ecc = echan->ecc;
 int channel = EDMA_CHAN_SLOT(echan->ch_num);

 if (ecc->chmap_exist) {
  slot = EDMA_CHAN_SLOT(slot);
  edma_write_array(ecc, EDMA_DCHMAP, channel, (slot << 5));
 }
}
