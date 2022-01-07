
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_notify {int types; scalar_t__ index; scalar_t__ size; } ;


 int ENOSYS ;

__attribute__((used)) static int
nvkm_fifo_cevent_ctor(struct nvkm_object *object, void *data, u32 size,
        struct nvkm_notify *notify)
{
 if (size == 0) {
  notify->size = 0;
  notify->types = 1;
  notify->index = 0;
  return 0;
 }
 return -ENOSYS;
}
