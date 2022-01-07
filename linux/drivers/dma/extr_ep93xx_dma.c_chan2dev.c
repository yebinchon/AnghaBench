
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct ep93xx_dma_chan {TYPE_2__ chan; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device device; } ;



__attribute__((used)) static inline struct device *chan2dev(struct ep93xx_dma_chan *edmac)
{
 return &edmac->chan.dev->device;
}
