
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagestash {int lock; int pvec; } ;


 int pagevec_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void stash_init(struct pagestash *stash)
{
 pagevec_init(&stash->pvec);
 spin_lock_init(&stash->lock);
}
