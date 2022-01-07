
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct d40_gen_dmac {int realtime_en; int realtime_clear; int high_prio_en; int high_prio_clear; } ;
struct TYPE_3__ {int realtime; int high_priority; } ;
struct d40_chan {TYPE_2__* base; TYPE_1__ dma_cfg; } ;
struct TYPE_4__ {int virtbase; struct d40_gen_dmac gen_dmac; } ;


 int BIT (int) ;
 int D40_TYPE_TO_EVENT (int) ;
 int D40_TYPE_TO_GROUP (int) ;
 scalar_t__ chan_is_logical (struct d40_chan*) ;
 int writel (int,int) ;

__attribute__((used)) static void __d40_set_prio_rt(struct d40_chan *d40c, int dev_type, bool src)
{
 bool realtime = d40c->dma_cfg.realtime;
 bool highprio = d40c->dma_cfg.high_priority;
 u32 rtreg;
 u32 event = D40_TYPE_TO_EVENT(dev_type);
 u32 group = D40_TYPE_TO_GROUP(dev_type);
 u32 bit = BIT(event);
 u32 prioreg;
 struct d40_gen_dmac *dmac = &d40c->base->gen_dmac;

 rtreg = realtime ? dmac->realtime_en : dmac->realtime_clear;
 if (!src && chan_is_logical(d40c))
  highprio = 0;

 prioreg = highprio ? dmac->high_prio_en : dmac->high_prio_clear;


 if (!src)
  bit <<= 16;

 writel(bit, d40c->base->virtbase + prioreg + group * 4);
 writel(bit, d40c->base->virtbase + rtreg + group * 4);
}
