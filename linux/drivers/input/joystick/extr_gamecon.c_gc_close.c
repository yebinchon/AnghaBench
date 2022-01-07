
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct gc {int mutex; TYPE_1__* pd; int timer; int used; } ;
struct TYPE_2__ {int port; } ;


 int del_timer_sync (int *) ;
 struct gc* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parport_release (TYPE_1__*) ;
 int parport_write_control (int ,int) ;

__attribute__((used)) static void gc_close(struct input_dev *dev)
{
 struct gc *gc = input_get_drvdata(dev);

 mutex_lock(&gc->mutex);
 if (!--gc->used) {
  del_timer_sync(&gc->timer);
  parport_write_control(gc->pd->port, 0x00);
  parport_release(gc->pd);
 }
 mutex_unlock(&gc->mutex);
}
