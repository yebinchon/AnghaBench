
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shdma_chan {int irq; int dev; } ;


 int chan_irq ;
 int chan_irqt ;
 int devm_request_threaded_irq (int ,int,int ,int ,unsigned long,char const*,struct shdma_chan*) ;

int shdma_request_irq(struct shdma_chan *schan, int irq,
      unsigned long flags, const char *name)
{
 int ret = devm_request_threaded_irq(schan->dev, irq, chan_irq,
         chan_irqt, flags, name, schan);

 schan->irq = ret < 0 ? ret : irq;

 return ret;
}
