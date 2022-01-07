
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int sectors_to_gc; } ;


 int atomic_set (int *,int) ;
 int wake_up_gc (struct cache_set*) ;

__attribute__((used)) static inline void force_wake_up_gc(struct cache_set *c)
{
 atomic_set(&c->sectors_to_gc, -1);
 wake_up_gc(c);
}
