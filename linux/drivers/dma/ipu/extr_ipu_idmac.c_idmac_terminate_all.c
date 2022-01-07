
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmac_channel {int chan_mutex; } ;
struct dma_chan {int dummy; } ;


 int __idmac_terminate_all (struct dma_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct idmac_channel* to_idmac_chan (struct dma_chan*) ;

__attribute__((used)) static int idmac_terminate_all(struct dma_chan *chan)
{
 struct idmac_channel *ichan = to_idmac_chan(chan);
 int ret;

 mutex_lock(&ichan->chan_mutex);

 ret = __idmac_terminate_all(chan);

 mutex_unlock(&ichan->chan_mutex);

 return ret;
}
