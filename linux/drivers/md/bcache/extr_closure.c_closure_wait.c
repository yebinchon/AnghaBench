
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure_waitlist {int list; } ;
struct closure {int list; int remaining; } ;


 int CLOSURE_WAITING ;
 int _RET_IP_ ;
 int atomic_add (int,int *) ;
 int atomic_read (int *) ;
 int closure_set_waiting (struct closure*,int ) ;
 int llist_add (int *,int *) ;

bool closure_wait(struct closure_waitlist *waitlist, struct closure *cl)
{
 if (atomic_read(&cl->remaining) & CLOSURE_WAITING)
  return 0;

 closure_set_waiting(cl, _RET_IP_);
 atomic_add(CLOSURE_WAITING + 1, &cl->remaining);
 llist_add(&cl->list, &waitlist->list);

 return 1;
}
