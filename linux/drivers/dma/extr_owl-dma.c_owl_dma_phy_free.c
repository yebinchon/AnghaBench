
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_dma_vchan {int * pchan; } ;
struct owl_dma {int dummy; } ;


 int owl_dma_terminate_pchan (struct owl_dma*,int *) ;

__attribute__((used)) static void owl_dma_phy_free(struct owl_dma *od, struct owl_dma_vchan *vchan)
{

 owl_dma_terminate_pchan(od, vchan->pchan);

 vchan->pchan = ((void*)0);
}
