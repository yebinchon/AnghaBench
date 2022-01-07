
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int percpu; int node; } ;


 int CPUHP_MD_RAID5_PREPARE ;
 int cpuhp_state_remove_instance (int ,int *) ;
 int free_percpu (int ) ;

__attribute__((used)) static void raid5_free_percpu(struct r5conf *conf)
{
 if (!conf->percpu)
  return;

 cpuhp_state_remove_instance(CPUHP_MD_RAID5_PREPARE, &conf->node);
 free_percpu(conf->percpu);
}
