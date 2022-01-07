
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prefetch_set {int lock; } ;


 int mutex_init (int *) ;
 int prefetch_wipe (struct prefetch_set*) ;

__attribute__((used)) static void prefetch_init(struct prefetch_set *p)
{
 mutex_init(&p->lock);
 prefetch_wipe(p);
}
