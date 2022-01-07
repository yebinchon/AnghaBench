
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_chan {int ecc; int ch_num; } ;


 int EDMA_CHANNEL_BIT (int) ;
 int EDMA_CHAN_SLOT (int ) ;
 int EDMA_REG_ARRAY_INDEX (int) ;
 int SH_EECR ;
 int edma_shadow0_write_array (int ,int ,int ,int ) ;

__attribute__((used)) static void edma_pause(struct edma_chan *echan)
{
 int channel = EDMA_CHAN_SLOT(echan->ch_num);

 edma_shadow0_write_array(echan->ecc, SH_EECR,
     EDMA_REG_ARRAY_INDEX(channel),
     EDMA_CHANNEL_BIT(channel));
}
