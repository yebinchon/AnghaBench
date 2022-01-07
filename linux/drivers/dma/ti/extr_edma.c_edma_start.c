
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_chan {int hw_triggered; int ch_num; struct edma_cc* ecc; } ;
struct edma_cc {int dev; } ;


 int EDMA_CHANNEL_BIT (int) ;
 int EDMA_CHAN_SLOT (int ) ;
 int EDMA_ECR ;
 int EDMA_EMCR ;
 int EDMA_REG_ARRAY_INDEX (int) ;
 int SH_EER ;
 int SH_EESR ;
 int SH_ER ;
 int SH_ESR ;
 int SH_SECR ;
 int dev_dbg (int ,char*,int,int ) ;
 int edma_shadow0_read_array (struct edma_cc*,int ,int) ;
 int edma_shadow0_write_array (struct edma_cc*,int ,int,int) ;
 int edma_write_array (struct edma_cc*,int ,int,int) ;

__attribute__((used)) static void edma_start(struct edma_chan *echan)
{
 struct edma_cc *ecc = echan->ecc;
 int channel = EDMA_CHAN_SLOT(echan->ch_num);
 int idx = EDMA_REG_ARRAY_INDEX(channel);
 int ch_bit = EDMA_CHANNEL_BIT(channel);

 if (!echan->hw_triggered) {

  dev_dbg(ecc->dev, "ESR%d %08x\n", idx,
   edma_shadow0_read_array(ecc, SH_ESR, idx));
  edma_shadow0_write_array(ecc, SH_ESR, idx, ch_bit);
 } else {

  dev_dbg(ecc->dev, "ER%d %08x\n", idx,
   edma_shadow0_read_array(ecc, SH_ER, idx));

  edma_write_array(ecc, EDMA_ECR, idx, ch_bit);
  edma_write_array(ecc, EDMA_EMCR, idx, ch_bit);

  edma_shadow0_write_array(ecc, SH_SECR, idx, ch_bit);
  edma_shadow0_write_array(ecc, SH_EESR, idx, ch_bit);
  dev_dbg(ecc->dev, "EER%d %08x\n", idx,
   edma_shadow0_read_array(ecc, SH_EER, idx));
 }
}
