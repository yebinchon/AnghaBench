
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_chan {scalar_t__ base; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int mtk_uart_apdma_read(struct mtk_chan *c, unsigned int reg)
{
 return readl(c->base + reg);
}
