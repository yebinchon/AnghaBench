
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throttle {int lock; } ;


 int down_read (int *) ;

__attribute__((used)) static void throttle_lock(struct throttle *t)
{
 down_read(&t->lock);
}
