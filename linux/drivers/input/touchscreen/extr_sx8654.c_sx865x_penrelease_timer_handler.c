
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sx8654 {TYPE_1__* client; int lock; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct sx8654* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sx865x_penrelease (struct sx8654*) ;
 int timer ;
 struct sx8654* ts ;

__attribute__((used)) static void sx865x_penrelease_timer_handler(struct timer_list *t)
{
 struct sx8654 *ts = from_timer(ts, t, timer);
 unsigned long flags;

 spin_lock_irqsave(&ts->lock, flags);
 sx865x_penrelease(ts);
 spin_unlock_irqrestore(&ts->lock, flags);
 dev_dbg(&ts->client->dev, "penrelease by timer\n");
}
