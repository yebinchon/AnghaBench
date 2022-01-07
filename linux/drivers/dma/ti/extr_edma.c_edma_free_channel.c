
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_chan {int dummy; } ;


 int edma_setup_interrupt (struct edma_chan*,int) ;
 int edma_stop (struct edma_chan*) ;

__attribute__((used)) static void edma_free_channel(struct edma_chan *echan)
{

 edma_stop(echan);

 edma_setup_interrupt(echan, 0);
}
