
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct efivar_entry {int dummy; } ;


 int kfree (struct efivar_entry*) ;
 struct efivar_entry* to_efivar_entry (struct kobject*) ;

__attribute__((used)) static void efivar_release(struct kobject *kobj)
{
 struct efivar_entry *var = to_efivar_entry(kobj);
 kfree(var);
}
