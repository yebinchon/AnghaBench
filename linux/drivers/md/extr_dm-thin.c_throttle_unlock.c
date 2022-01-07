
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throttle {int lock; } ;


 int up_read (int *) ;

__attribute__((used)) static void throttle_unlock(struct throttle *t)
{
 up_read(&t->lock);
}
