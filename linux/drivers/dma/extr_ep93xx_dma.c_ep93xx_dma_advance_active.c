
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cookie; } ;
struct ep93xx_dma_desc {TYPE_1__ txd; } ;
struct ep93xx_dma_chan {int flags; int active; } ;


 int EP93XX_DMA_IS_CYCLIC ;
 struct ep93xx_dma_desc* ep93xx_dma_get_active (struct ep93xx_dma_chan*) ;
 int list_rotate_left (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool ep93xx_dma_advance_active(struct ep93xx_dma_chan *edmac)
{
 struct ep93xx_dma_desc *desc;

 list_rotate_left(&edmac->active);

 if (test_bit(EP93XX_DMA_IS_CYCLIC, &edmac->flags))
  return 1;

 desc = ep93xx_dma_get_active(edmac);
 if (!desc)
  return 0;





 return !desc->txd.cookie;
}
