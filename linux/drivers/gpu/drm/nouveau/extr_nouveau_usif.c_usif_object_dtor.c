
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usif_object {int head; } ;


 int kfree (struct usif_object*) ;
 int list_del (int *) ;

__attribute__((used)) static void
usif_object_dtor(struct usif_object *object)
{
 list_del(&object->head);
 kfree(object);
}
