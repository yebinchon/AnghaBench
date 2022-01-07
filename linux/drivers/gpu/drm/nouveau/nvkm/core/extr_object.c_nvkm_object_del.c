
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_object {int head; int func; } ;


 int WARN_ON (int) ;
 int kfree (struct nvkm_object*) ;
 int list_del (int *) ;
 struct nvkm_object* nvkm_object_dtor (struct nvkm_object*) ;
 int nvkm_object_remove (struct nvkm_object*) ;

void
nvkm_object_del(struct nvkm_object **pobject)
{
 struct nvkm_object *object = *pobject;
 if (object && !WARN_ON(!object->func)) {
  *pobject = nvkm_object_dtor(object);
  nvkm_object_remove(object);
  list_del(&object->head);
  kfree(*pobject);
  *pobject = ((void*)0);
 }
}
