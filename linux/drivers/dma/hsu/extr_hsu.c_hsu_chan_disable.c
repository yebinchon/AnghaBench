
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsu_dma_chan {int dummy; } ;


 int HSU_CH_CR ;
 int hsu_chan_writel (struct hsu_dma_chan*,int ,int ) ;

__attribute__((used)) static inline void hsu_chan_disable(struct hsu_dma_chan *hsuc)
{
 hsu_chan_writel(hsuc, HSU_CH_CR, 0);
}
