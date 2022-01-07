
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct artpec6_crypto {int task; } ;


 struct artpec6_crypto* ac ;
 int artpec6_crypto_dev ;
 int dev_info_ratelimited (int ,char*) ;
 struct artpec6_crypto* from_timer (int ,struct timer_list*,int ) ;
 int tasklet_schedule (int *) ;
 int timer ;

__attribute__((used)) static void artpec6_crypto_timeout(struct timer_list *t)
{
 struct artpec6_crypto *ac = from_timer(ac, t, timer);

 dev_info_ratelimited(artpec6_crypto_dev, "timeout\n");

 tasklet_schedule(&ac->task);
}
