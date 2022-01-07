
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_work {int op; } ;
struct background_tracker {int pending_writebacks; int pending_demotes; int pending_promotes; } ;





 int atomic_add (int,int *) ;

__attribute__((used)) static void update_stats(struct background_tracker *b, struct policy_work *w, int delta)
{
 switch (w->op) {
 case 129:
  atomic_add(delta, &b->pending_promotes);
  break;

 case 130:
  atomic_add(delta, &b->pending_demotes);
  break;

 case 128:
  atomic_add(delta, &b->pending_writebacks);
  break;
 }
}
