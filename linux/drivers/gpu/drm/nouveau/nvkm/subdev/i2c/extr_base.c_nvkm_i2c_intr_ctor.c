
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_notify {int size; int index; int types; } ;
struct nvkm_i2c_ntfy_req {int port; int mask; } ;
struct nvkm_i2c_ntfy_rep {int dummy; } ;


 int EINVAL ;
 int WARN_ON (int) ;

__attribute__((used)) static int
nvkm_i2c_intr_ctor(struct nvkm_object *object, void *data, u32 size,
     struct nvkm_notify *notify)
{
 struct nvkm_i2c_ntfy_req *req = data;
 if (!WARN_ON(size != sizeof(*req))) {
  notify->size = sizeof(struct nvkm_i2c_ntfy_rep);
  notify->types = req->mask;
  notify->index = req->port;
  return 0;
 }
 return -EINVAL;
}
