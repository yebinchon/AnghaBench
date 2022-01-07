
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int gc_wait; } ;


 int wake_up (int *) ;

__attribute__((used)) static inline void wake_up_gc(struct cache_set *c)
{
 wake_up(&c->gc_wait);
}
