
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int kfree (int ) ;
 int nr_devs ;
 TYPE_2__* stm_heartbeat ;
 int stm_source_unregister_device (TYPE_1__*) ;

__attribute__((used)) static void stm_heartbeat_exit(void)
{
 int i;

 for (i = 0; i < nr_devs; i++) {
  stm_source_unregister_device(&stm_heartbeat[i].data);
  kfree(stm_heartbeat[i].data.name);
 }
}
