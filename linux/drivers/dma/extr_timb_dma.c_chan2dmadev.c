
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;


 TYPE_2__* chan2dev (struct dma_chan*) ;

__attribute__((used)) static struct device *chan2dmadev(struct dma_chan *chan)
{
 return chan2dev(chan)->parent->parent;
}
