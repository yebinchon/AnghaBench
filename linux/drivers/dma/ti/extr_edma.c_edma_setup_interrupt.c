
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_chan {int ch_num; struct edma_cc* ecc; } ;
struct edma_cc {int dummy; } ;


 int EDMA_CHANNEL_BIT (int) ;
 int EDMA_CHAN_SLOT (int ) ;
 int EDMA_REG_ARRAY_INDEX (int) ;
 int SH_ICR ;
 int SH_IECR ;
 int SH_IESR ;
 int edma_shadow0_write_array (struct edma_cc*,int ,int,int) ;

__attribute__((used)) static void edma_setup_interrupt(struct edma_chan *echan, bool enable)
{
 struct edma_cc *ecc = echan->ecc;
 int channel = EDMA_CHAN_SLOT(echan->ch_num);
 int idx = EDMA_REG_ARRAY_INDEX(channel);
 int ch_bit = EDMA_CHANNEL_BIT(channel);

 if (enable) {
  edma_shadow0_write_array(ecc, SH_ICR, idx, ch_bit);
  edma_shadow0_write_array(ecc, SH_IESR, idx, ch_bit);
 } else {
  edma_shadow0_write_array(ecc, SH_IECR, idx, ch_bit);
 }
}
