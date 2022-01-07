
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct dvb_demux {int lock; TYPE_2__* feed; } ;
struct TYPE_6__ {int ts; } ;
struct TYPE_4__ {int (* ts ) (int const*,size_t,int *,int ,int *,int *) ;} ;
struct TYPE_5__ {int buffer_flags; TYPE_3__ feed; TYPE_1__ cb; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int const*,size_t,int *,int ,int *,int *) ;

void dvb_dmx_swfilter_raw(struct dvb_demux *demux, const u8 *buf, size_t count)
{
 unsigned long flags;

 spin_lock_irqsave(&demux->lock, flags);

 demux->feed->cb.ts(buf, count, ((void*)0), 0, &demux->feed->feed.ts,
      &demux->feed->buffer_flags);

 spin_unlock_irqrestore(&demux->lock, flags);
}
