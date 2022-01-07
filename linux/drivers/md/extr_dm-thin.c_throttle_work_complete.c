
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throttle {int throttle_applied; int lock; } ;


 int up_write (int *) ;

__attribute__((used)) static void throttle_work_complete(struct throttle *t)
{
 if (t->throttle_applied) {
  t->throttle_applied = 0;
  up_write(&t->lock);
 }
}
