
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_dma {int dummy; } ;


 int atc_setup_irq (struct at_dma*,int,int ) ;

__attribute__((used)) static void atc_disable_chan_irq(struct at_dma *atdma, int chan_id)
{
 atc_setup_irq(atdma, chan_id, 0);
}
