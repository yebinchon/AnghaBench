
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btree_write {int * journal; scalar_t__ prio_blocked; } ;
struct btree {TYPE_2__* c; } ;
struct TYPE_3__ {int wait; } ;
struct TYPE_4__ {TYPE_1__ journal; int prio_blocked; } ;


 int __closure_wake_up (int *) ;
 int atomic_dec_bug (int *) ;
 int atomic_sub_return (scalar_t__,int *) ;
 int wake_up_allocators (TYPE_2__*) ;

__attribute__((used)) static void btree_complete_write(struct btree *b, struct btree_write *w)
{
 if (w->prio_blocked &&
     !atomic_sub_return(w->prio_blocked, &b->c->prio_blocked))
  wake_up_allocators(b->c);

 if (w->journal) {
  atomic_dec_bug(w->journal);
  __closure_wake_up(&b->c->journal.wait);
 }

 w->prio_blocked = 0;
 w->journal = ((void*)0);
}
