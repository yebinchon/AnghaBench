
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long expires; } ;
struct delay_c {int timer_lock; TYPE_1__ delay_timer; } ;


 int mod_timer (TYPE_1__*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int timer_pending (TYPE_1__*) ;

__attribute__((used)) static void queue_timeout(struct delay_c *dc, unsigned long expires)
{
 mutex_lock(&dc->timer_lock);

 if (!timer_pending(&dc->delay_timer) || expires < dc->delay_timer.expires)
  mod_timer(&dc->delay_timer, expires);

 mutex_unlock(&dc->timer_lock);
}
