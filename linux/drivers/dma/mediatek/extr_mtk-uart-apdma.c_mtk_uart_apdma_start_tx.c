
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mtk_uart_apdmadev {scalar_t__ support_33bits; } ;
struct mtk_uart_apdma_desc {unsigned int addr; scalar_t__ avail_len; } ;
struct TYPE_6__ {TYPE_4__* device; } ;
struct TYPE_7__ {TYPE_2__ chan; } ;
struct TYPE_5__ {unsigned int dst_port_window_size; } ;
struct mtk_chan {struct mtk_uart_apdma_desc* desc; TYPE_3__ vc; TYPE_1__ cfg; } ;
struct TYPE_8__ {int dev; } ;


 unsigned int VFF_4G_EN_B ;
 int VFF_4G_SUPPORT ;
 int VFF_ADDR ;
 int VFF_EN ;
 unsigned int VFF_EN_B ;
 int VFF_FLUSH ;
 unsigned int VFF_FLUSH_B ;
 int VFF_INT_EN ;
 int VFF_INT_FLAG ;
 int VFF_LEFT_SIZE ;
 int VFF_LEN ;
 unsigned int VFF_RING_SIZE ;
 unsigned int VFF_RING_WRAP ;
 int VFF_THRE ;
 unsigned int VFF_TX_INT_CLR_B ;
 unsigned int VFF_TX_INT_EN_B ;
 unsigned int VFF_TX_THRE (unsigned int) ;
 int VFF_WPT ;
 int dev_err (int ,char*) ;
 unsigned int mtk_uart_apdma_read (struct mtk_chan*,int ) ;
 int mtk_uart_apdma_write (struct mtk_chan*,int ,unsigned int) ;
 struct mtk_uart_apdmadev* to_mtk_uart_apdma_dev (TYPE_4__*) ;

__attribute__((used)) static void mtk_uart_apdma_start_tx(struct mtk_chan *c)
{
 struct mtk_uart_apdmadev *mtkd =
    to_mtk_uart_apdma_dev(c->vc.chan.device);
 struct mtk_uart_apdma_desc *d = c->desc;
 unsigned int wpt, vff_sz;

 vff_sz = c->cfg.dst_port_window_size;
 if (!mtk_uart_apdma_read(c, VFF_LEN)) {
  mtk_uart_apdma_write(c, VFF_ADDR, d->addr);
  mtk_uart_apdma_write(c, VFF_LEN, vff_sz);
  mtk_uart_apdma_write(c, VFF_THRE, VFF_TX_THRE(vff_sz));
  mtk_uart_apdma_write(c, VFF_WPT, 0);
  mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);

  if (mtkd->support_33bits)
   mtk_uart_apdma_write(c, VFF_4G_SUPPORT, VFF_4G_EN_B);
 }

 mtk_uart_apdma_write(c, VFF_EN, VFF_EN_B);
 if (mtk_uart_apdma_read(c, VFF_EN) != VFF_EN_B)
  dev_err(c->vc.chan.device->dev, "Enable TX fail\n");

 if (!mtk_uart_apdma_read(c, VFF_LEFT_SIZE)) {
  mtk_uart_apdma_write(c, VFF_INT_EN, VFF_TX_INT_EN_B);
  return;
 }

 wpt = mtk_uart_apdma_read(c, VFF_WPT);

 wpt += c->desc->avail_len;
 if ((wpt & VFF_RING_SIZE) == vff_sz)
  wpt = (wpt & VFF_RING_WRAP) ^ VFF_RING_WRAP;


 mtk_uart_apdma_write(c, VFF_WPT, wpt);


 mtk_uart_apdma_write(c, VFF_INT_EN, VFF_TX_INT_EN_B);
 if (!mtk_uart_apdma_read(c, VFF_FLUSH))
  mtk_uart_apdma_write(c, VFF_FLUSH, VFF_FLUSH_B);
}
