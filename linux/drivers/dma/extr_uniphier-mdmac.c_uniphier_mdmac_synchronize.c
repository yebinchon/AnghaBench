
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;


 int to_virt_chan (struct dma_chan*) ;
 int vchan_synchronize (int ) ;

__attribute__((used)) static void uniphier_mdmac_synchronize(struct dma_chan *chan)
{
 vchan_synchronize(to_virt_chan(chan));
}
