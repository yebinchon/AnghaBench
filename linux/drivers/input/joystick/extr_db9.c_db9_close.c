
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct input_dev {int dummy; } ;
struct db9 {int mutex; TYPE_1__* pd; int timer; int used; } ;
struct TYPE_2__ {struct parport* port; } ;


 int del_timer_sync (int *) ;
 struct db9* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parport_data_forward (struct parport*) ;
 int parport_release (TYPE_1__*) ;
 int parport_write_control (struct parport*,int) ;

__attribute__((used)) static void db9_close(struct input_dev *dev)
{
 struct db9 *db9 = input_get_drvdata(dev);
 struct parport *port = db9->pd->port;

 mutex_lock(&db9->mutex);
 if (!--db9->used) {
  del_timer_sync(&db9->timer);
  parport_write_control(port, 0x00);
  parport_data_forward(port);
  parport_release(db9->pd);
 }
 mutex_unlock(&db9->mutex);
}
