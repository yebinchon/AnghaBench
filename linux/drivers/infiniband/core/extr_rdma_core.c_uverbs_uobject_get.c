
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uobject {int ref; } ;


 int kref_get (int *) ;

void uverbs_uobject_get(struct ib_uobject *uobject)
{
 kref_get(&uobject->ref);
}
