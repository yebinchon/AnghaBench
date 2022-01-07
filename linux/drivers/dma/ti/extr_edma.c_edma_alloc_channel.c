
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_chan {int ch_num; struct edma_cc* ecc; } ;
struct edma_cc {int dummy; } ;
typedef enum dma_event_q { ____Placeholder_dma_event_q } dma_event_q ;


 int EDMA_CHANNEL_BIT (int) ;
 int EDMA_CHAN_SLOT (int ) ;
 int EDMA_DRAE ;
 int EDMA_REG_ARRAY_INDEX (int) ;
 int edma_assign_channel_eventq (struct edma_chan*,int) ;
 int edma_or_array2 (struct edma_cc*,int ,int ,int ,int ) ;
 int edma_setup_interrupt (struct edma_chan*,int) ;
 int edma_stop (struct edma_chan*) ;

__attribute__((used)) static int edma_alloc_channel(struct edma_chan *echan,
         enum dma_event_q eventq_no)
{
 struct edma_cc *ecc = echan->ecc;
 int channel = EDMA_CHAN_SLOT(echan->ch_num);


 edma_or_array2(ecc, EDMA_DRAE, 0, EDMA_REG_ARRAY_INDEX(channel),
         EDMA_CHANNEL_BIT(channel));


 edma_stop(echan);

 edma_setup_interrupt(echan, 1);

 edma_assign_channel_eventq(echan, eventq_no);

 return 0;
}
