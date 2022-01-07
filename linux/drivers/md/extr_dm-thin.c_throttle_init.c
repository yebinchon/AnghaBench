
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throttle {int throttle_applied; int lock; } ;


 int init_rwsem (int *) ;

__attribute__((used)) static void throttle_init(struct throttle *t)
{
 init_rwsem(&t->lock);
 t->throttle_applied = 0;
}
