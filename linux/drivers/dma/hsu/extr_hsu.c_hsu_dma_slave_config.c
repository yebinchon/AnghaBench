
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsu_dma_chan {int config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct hsu_dma_chan* to_hsu_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int hsu_dma_slave_config(struct dma_chan *chan,
    struct dma_slave_config *config)
{
 struct hsu_dma_chan *hsuc = to_hsu_dma_chan(chan);

 memcpy(&hsuc->config, config, sizeof(hsuc->config));

 return 0;
}
