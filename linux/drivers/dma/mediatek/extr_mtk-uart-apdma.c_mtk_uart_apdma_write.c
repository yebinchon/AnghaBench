
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_chan {scalar_t__ base; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mtk_uart_apdma_write(struct mtk_chan *c,
          unsigned int reg, unsigned int val)
{
 writel(val, c->base + reg);
}
