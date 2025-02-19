
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int node; } ;
struct mtk_uart_apdma_desc {TYPE_2__ vd; scalar_t__ avail_len; } ;
struct TYPE_3__ {unsigned int src_port_window_size; } ;
struct mtk_chan {scalar_t__ rx_status; TYPE_1__ cfg; struct mtk_uart_apdma_desc* desc; } ;


 int VFF_EN ;
 unsigned int VFF_EN_CLR_B ;
 int VFF_INT_EN ;
 unsigned int VFF_INT_EN_CLR_B ;
 int VFF_INT_FLAG ;
 unsigned int VFF_RING_SIZE ;
 unsigned int VFF_RING_WRAP ;
 int VFF_RPT ;
 unsigned int VFF_RX_INT_CLR_B ;
 int VFF_VALID_SIZE ;
 int VFF_WPT ;
 int list_del (int *) ;
 unsigned int mtk_uart_apdma_read (struct mtk_chan*,int ) ;
 int mtk_uart_apdma_write (struct mtk_chan*,int ,unsigned int) ;
 int vchan_cookie_complete (TYPE_2__*) ;

__attribute__((used)) static void mtk_uart_apdma_rx_handler(struct mtk_chan *c)
{
 struct mtk_uart_apdma_desc *d = c->desc;
 unsigned int len, wg, rg;
 int cnt;

 mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_RX_INT_CLR_B);

 if (!mtk_uart_apdma_read(c, VFF_VALID_SIZE))
  return;

 mtk_uart_apdma_write(c, VFF_EN, VFF_EN_CLR_B);
 mtk_uart_apdma_write(c, VFF_INT_EN, VFF_INT_EN_CLR_B);

 len = c->cfg.src_port_window_size;
 rg = mtk_uart_apdma_read(c, VFF_RPT);
 wg = mtk_uart_apdma_read(c, VFF_WPT);
 cnt = (wg & VFF_RING_SIZE) - (rg & VFF_RING_SIZE);





 if ((rg ^ wg) & VFF_RING_WRAP)
  cnt += len;

 c->rx_status = d->avail_len - cnt;
 mtk_uart_apdma_write(c, VFF_RPT, wg);

 list_del(&d->vd.node);
 vchan_cookie_complete(&d->vd);
}
