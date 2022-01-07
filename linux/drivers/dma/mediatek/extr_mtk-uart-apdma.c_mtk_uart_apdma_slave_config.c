
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_chan {int cfg; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;

__attribute__((used)) static int mtk_uart_apdma_slave_config(struct dma_chan *chan,
       struct dma_slave_config *config)
{
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);

 memcpy(&c->cfg, config, sizeof(*config));

 return 0;
}
