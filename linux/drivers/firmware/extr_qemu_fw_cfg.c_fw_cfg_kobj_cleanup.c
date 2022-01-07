
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int kobject_del (struct kobject*) ;
 int kobject_put (struct kobject*) ;

__attribute__((used)) static inline void fw_cfg_kobj_cleanup(struct kobject *kobj)
{
 kobject_del(kobj);
 kobject_put(kobj);
}
