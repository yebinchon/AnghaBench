
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uobject {int ref; } ;


 int kref_put (int *,int ) ;
 int uverbs_uobject_free ;

void uverbs_uobject_put(struct ib_uobject *uobject)
{
 kref_put(&uobject->ref, uverbs_uobject_free);
}
