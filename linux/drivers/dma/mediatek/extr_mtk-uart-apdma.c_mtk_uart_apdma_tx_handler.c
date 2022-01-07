
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct mtk_uart_apdma_desc {TYPE_1__ vd; } ;
struct mtk_chan {struct mtk_uart_apdma_desc* desc; } ;


 int VFF_EN ;
 int VFF_EN_CLR_B ;
 int VFF_INT_EN ;
 int VFF_INT_EN_CLR_B ;
 int VFF_INT_FLAG ;
 int VFF_TX_INT_CLR_B ;
 int list_del (int *) ;
 int mtk_uart_apdma_write (struct mtk_chan*,int ,int ) ;
 int vchan_cookie_complete (TYPE_1__*) ;

__attribute__((used)) static void mtk_uart_apdma_tx_handler(struct mtk_chan *c)
{
 struct mtk_uart_apdma_desc *d = c->desc;

 mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);
 mtk_uart_apdma_write(c, VFF_INT_EN, VFF_INT_EN_CLR_B);
 mtk_uart_apdma_write(c, VFF_EN, VFF_EN_CLR_B);

 list_del(&d->vd.node);
 vchan_cookie_complete(&d->vd);
}
