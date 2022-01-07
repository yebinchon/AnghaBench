
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dst_addr; int src_addr; } ;
struct pl08x_dma_chan {int slave; TYPE_2__* cd; TYPE_1__ cfg; int name; } ;
struct TYPE_4__ {int addr; int bus_id; } ;



__attribute__((used)) static void pl08x_dma_slave_init(struct pl08x_dma_chan *chan)
{
 chan->slave = 1;
 chan->name = chan->cd->bus_id;
 chan->cfg.src_addr = chan->cd->addr;
 chan->cfg.dst_addr = chan->cd->addr;
}
