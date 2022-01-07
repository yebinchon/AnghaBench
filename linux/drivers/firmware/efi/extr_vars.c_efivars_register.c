
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct efivars {struct kobject* kobject; struct efivar_operations const* ops; } ;
struct efivar_operations {int dummy; } ;


 int EINTR ;
 struct efivars* __efivars ;
 scalar_t__ down_interruptible (int *) ;
 int efivars_lock ;
 int pr_info (char*) ;
 int up (int *) ;

int efivars_register(struct efivars *efivars,
       const struct efivar_operations *ops,
       struct kobject *kobject)
{
 if (down_interruptible(&efivars_lock))
  return -EINTR;

 efivars->ops = ops;
 efivars->kobject = kobject;

 __efivars = efivars;

 pr_info("Registered efivars operations\n");

 up(&efivars_lock);

 return 0;
}
