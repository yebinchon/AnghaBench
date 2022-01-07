
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parport {int dummy; } ;
struct input_dev {int dummy; } ;
struct db9 {size_t mode; int mutex; int timer; TYPE_1__* pd; int used; } ;
struct TYPE_4__ {scalar_t__ reverse; } ;
struct TYPE_3__ {struct parport* port; } ;


 int DB9_NORMAL ;
 scalar_t__ DB9_REFRESH_TIME ;
 TYPE_2__* db9_modes ;
 struct db9* input_get_drvdata (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int parport_claim (TYPE_1__*) ;
 int parport_data_reverse (struct parport*) ;
 int parport_write_control (struct parport*,int ) ;
 int parport_write_data (struct parport*,int) ;

__attribute__((used)) static int db9_open(struct input_dev *dev)
{
 struct db9 *db9 = input_get_drvdata(dev);
 struct parport *port = db9->pd->port;
 int err;

 err = mutex_lock_interruptible(&db9->mutex);
 if (err)
  return err;

 if (!db9->used++) {
  parport_claim(db9->pd);
  parport_write_data(port, 0xff);
  if (db9_modes[db9->mode].reverse) {
   parport_data_reverse(port);
   parport_write_control(port, DB9_NORMAL);
  }
  mod_timer(&db9->timer, jiffies + DB9_REFRESH_TIME);
 }

 mutex_unlock(&db9->mutex);
 return 0;
}
