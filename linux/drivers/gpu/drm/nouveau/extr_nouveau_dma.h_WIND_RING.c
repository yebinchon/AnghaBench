
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int put; int cur; } ;
struct nouveau_channel {TYPE_1__ dma; } ;



__attribute__((used)) static inline void
WIND_RING(struct nouveau_channel *chan)
{
 chan->dma.cur = chan->dma.put;
}
