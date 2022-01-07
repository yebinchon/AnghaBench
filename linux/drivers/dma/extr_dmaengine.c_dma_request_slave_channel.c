
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct dma_chan*) ;
 struct dma_chan* dma_request_chan (struct device*,char const*) ;

struct dma_chan *dma_request_slave_channel(struct device *dev,
        const char *name)
{
 struct dma_chan *ch = dma_request_chan(dev, name);
 if (IS_ERR(ch))
  return ((void*)0);

 return ch;
}
