
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static void input_stop_autorepeat(struct input_dev *dev)
{
 del_timer(&dev->timer);
}
