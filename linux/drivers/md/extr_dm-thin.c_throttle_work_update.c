
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throttle {int throttle_applied; scalar_t__ threshold; int lock; } ;


 int down_write (int *) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void throttle_work_update(struct throttle *t)
{
 if (!t->throttle_applied && jiffies > t->threshold) {
  down_write(&t->lock);
  t->throttle_applied = 1;
 }
}
