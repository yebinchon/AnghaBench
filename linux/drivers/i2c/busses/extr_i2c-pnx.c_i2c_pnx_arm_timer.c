
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {unsigned long expires; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct timer_list timer; } ;
struct i2c_pnx_algo_data {TYPE_2__ adapter; int timeout; TYPE_1__ mif; } ;


 int add_timer (struct timer_list*) ;
 int del_timer_sync (struct timer_list*) ;
 int dev_dbg (int *,char*,unsigned long,unsigned long) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;

__attribute__((used)) static inline void i2c_pnx_arm_timer(struct i2c_pnx_algo_data *alg_data)
{
 struct timer_list *timer = &alg_data->mif.timer;
 unsigned long expires = msecs_to_jiffies(alg_data->timeout);

 if (expires <= 1)
  expires = 2;

 del_timer_sync(timer);

 dev_dbg(&alg_data->adapter.dev, "Timer armed at %lu plus %lu jiffies.\n",
  jiffies, expires);

 timer->expires = jiffies + expires;

 add_timer(timer);
}
