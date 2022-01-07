
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int api_ch; int submitted; int issued; } ;


 int mic_dma_issue_pending (int *) ;
 scalar_t__ mic_dma_pending_level ;
 scalar_t__ mic_dma_ring_count (int ,int ) ;

__attribute__((used)) static inline void mic_dma_update_pending(struct mic_dma_chan *ch)
{
 if (mic_dma_ring_count(ch->issued, ch->submitted)
   > mic_dma_pending_level)
  mic_dma_issue_pending(&ch->api_ch);
}
