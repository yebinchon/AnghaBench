
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;
struct dw_edma_chan {TYPE_3__ vc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device device; } ;



__attribute__((used)) static inline
struct device *chan2dev(struct dw_edma_chan *chan)
{
 return &chan->vc.chan.dev->device;
}
