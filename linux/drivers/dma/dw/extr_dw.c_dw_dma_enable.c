
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma {int dummy; } ;


 int do_dw_dma_on (struct dw_dma*) ;

__attribute__((used)) static void dw_dma_enable(struct dw_dma *dw)
{
 do_dw_dma_on(dw);
}
