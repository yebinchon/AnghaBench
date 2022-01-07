
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shdma_chan {scalar_t__ real_slave_id; } ;
struct dma_slave_config {scalar_t__ slave_id; scalar_t__ direction; int dst_addr; int src_addr; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ DMA_DEV_TO_MEM ;
 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int shdma_setup_slave (struct shdma_chan*,int ) ;
 struct shdma_chan* to_shdma_chan (struct dma_chan*) ;

__attribute__((used)) static int shdma_config(struct dma_chan *chan,
   struct dma_slave_config *config)
{
 struct shdma_chan *schan = to_shdma_chan(chan);





 if (!config)
  return -EINVAL;





 if (WARN_ON_ONCE(config->slave_id &&
    config->slave_id != schan->real_slave_id))
  schan->real_slave_id = config->slave_id;





 return shdma_setup_slave(schan,
     config->direction == DMA_DEV_TO_MEM ?
     config->src_addr : config->dst_addr);
}
