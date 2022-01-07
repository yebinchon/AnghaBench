
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct esre_entry {int list; } ;


 int kfree (struct esre_entry*) ;
 int list_del (int *) ;
 struct esre_entry* to_entry (struct kobject*) ;

__attribute__((used)) static void esre_release(struct kobject *kobj)
{
 struct esre_entry *entry = to_entry(kobj);

 list_del(&entry->list);
 kfree(entry);
}
