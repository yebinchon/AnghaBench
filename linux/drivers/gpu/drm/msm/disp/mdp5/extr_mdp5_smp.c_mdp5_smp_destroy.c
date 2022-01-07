
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_smp {int dummy; } ;


 int kfree (struct mdp5_smp*) ;

void mdp5_smp_destroy(struct mdp5_smp *smp)
{
 kfree(smp);
}
