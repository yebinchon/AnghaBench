
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x_data {unsigned int x; unsigned int y; unsigned int z1; unsigned int z2; } ;
struct tsc200x {unsigned int in_x; scalar_t__ in_y; unsigned int in_z1; unsigned int in_z2; unsigned int x_plate_ohm; scalar_t__ last_valid_interrupt; int lock; int penup_timer; int pen_down; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int MAX_12BIT ;
 int TSC200X_DATA_REGS ;
 int TSC200X_PENUP_TIME_MS ;
 int TSC200X_REG_X ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int regmap_bulk_read (int ,int ,struct tsc200x_data*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tsc200x_update_pen_state (struct tsc200x*,unsigned int,scalar_t__,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t tsc200x_irq_thread(int irq, void *_ts)
{
 struct tsc200x *ts = _ts;
 unsigned long flags;
 unsigned int pressure;
 struct tsc200x_data tsdata;
 int error;


 error = regmap_bulk_read(ts->regmap, TSC200X_REG_X, &tsdata,
     TSC200X_DATA_REGS);
 if (unlikely(error))
  goto out;


 if (unlikely(tsdata.x > MAX_12BIT || tsdata.y > MAX_12BIT))
  goto out;


 if (unlikely(tsdata.z1 == 0 || tsdata.z2 > MAX_12BIT))
  goto out;
 if (unlikely(tsdata.z1 >= tsdata.z2))
  goto out;





 if (!ts->pen_down &&
     ts->in_x == tsdata.x && ts->in_y == tsdata.y &&
     ts->in_z1 == tsdata.z1 && ts->in_z2 == tsdata.z2) {
  goto out;
 }





 ts->in_x = tsdata.x;
 ts->in_y = tsdata.y;
 ts->in_z1 = tsdata.z1;
 ts->in_z2 = tsdata.z2;


 pressure = tsdata.x * (tsdata.z2 - tsdata.z1) / tsdata.z1;
 pressure = pressure * ts->x_plate_ohm / 4096;
 if (unlikely(pressure > MAX_12BIT))
  goto out;

 spin_lock_irqsave(&ts->lock, flags);

 tsc200x_update_pen_state(ts, tsdata.x, tsdata.y, pressure);
 mod_timer(&ts->penup_timer,
    jiffies + msecs_to_jiffies(TSC200X_PENUP_TIME_MS));

 spin_unlock_irqrestore(&ts->lock, flags);

 ts->last_valid_interrupt = jiffies;
out:
 return IRQ_HANDLED;
}
