
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst_maxburst; int src_maxburst; } ;
struct idma64_chan {TYPE_1__ config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int convert_burst (int *) ;
 int memcpy (TYPE_1__*,struct dma_slave_config*,int) ;
 struct idma64_chan* to_idma64_chan (struct dma_chan*) ;

__attribute__((used)) static int idma64_slave_config(struct dma_chan *chan,
  struct dma_slave_config *config)
{
 struct idma64_chan *idma64c = to_idma64_chan(chan);

 memcpy(&idma64c->config, config, sizeof(idma64c->config));

 convert_burst(&idma64c->config.src_maxburst);
 convert_burst(&idma64c->config.dst_maxburst);

 return 0;
}
