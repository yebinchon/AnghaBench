
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chip {struct dw_dma* dw; } ;
struct dw_dma {int (* enable ) (struct dw_dma*) ;} ;


 int stub1 (struct dw_dma*) ;

int do_dw_dma_enable(struct dw_dma_chip *chip)
{
 struct dw_dma *dw = chip->dw;

 dw->enable(dw);
 return 0;
}
