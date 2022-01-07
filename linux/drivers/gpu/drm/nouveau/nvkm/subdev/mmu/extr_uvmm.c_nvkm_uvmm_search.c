
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void nvkm_vmm ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct TYPE_3__ {void* vmm; } ;


 scalar_t__ IS_ERR (struct nvkm_object*) ;
 struct nvkm_object* nvkm_object_search (struct nvkm_client*,int ,TYPE_1__* (*) (struct nvkm_object*)) ;
 TYPE_1__* nvkm_uvmm (struct nvkm_object*) ;

struct nvkm_vmm *
nvkm_uvmm_search(struct nvkm_client *client, u64 handle)
{
 struct nvkm_object *object;

 object = nvkm_object_search(client, handle, &nvkm_uvmm);
 if (IS_ERR(object))
  return (void *)object;

 return nvkm_uvmm(object)->vmm;
}
