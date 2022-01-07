
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;


 TYPE_1__* dummy_stm ;
 int kfree (int ) ;
 int nr_dummies ;
 int stm_unregister_device (TYPE_1__*) ;

__attribute__((used)) static void dummy_stm_exit(void)
{
 int i;

 for (i = 0; i < nr_dummies; i++) {
  stm_unregister_device(&dummy_stm[i]);
  kfree(dummy_stm[i].name);
 }
}
