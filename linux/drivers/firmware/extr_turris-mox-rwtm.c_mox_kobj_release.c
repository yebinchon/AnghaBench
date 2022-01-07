
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int kfree (int ) ;
 TYPE_1__* to_rwtm (struct kobject*) ;

__attribute__((used)) static void mox_kobj_release(struct kobject *kobj)
{
 kfree(to_rwtm(kobj)->kobj);
}
