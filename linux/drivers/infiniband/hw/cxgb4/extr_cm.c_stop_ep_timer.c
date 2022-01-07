
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct c4iw_ep {TYPE_1__ com; int timer; } ;


 int TIMEOUT ;
 int c4iw_put_ep (TYPE_1__*) ;
 int del_timer_sync (int *) ;
 int pr_debug (char*,struct c4iw_ep*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int stop_ep_timer(struct c4iw_ep *ep)
{
 pr_debug("ep %p stopping\n", ep);
 del_timer_sync(&ep->timer);
 if (!test_and_set_bit(TIMEOUT, &ep->com.flags)) {
  c4iw_put_ep(&ep->com);
  return 0;
 }
 return 1;
}
