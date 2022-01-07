
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsu_dma_chan {int dummy; } ;


 int hsu_dma_chan_start (struct hsu_dma_chan*) ;

__attribute__((used)) static void hsu_dma_start_channel(struct hsu_dma_chan *hsuc)
{
 hsu_dma_chan_start(hsuc);
}
