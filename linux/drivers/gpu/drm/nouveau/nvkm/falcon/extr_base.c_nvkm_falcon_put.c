
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_falcon {int mutex; struct nvkm_subdev const* user; int name; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_debug (struct nvkm_subdev const*,char*,int ) ;
 scalar_t__ unlikely (int) ;

void
nvkm_falcon_put(struct nvkm_falcon *falcon, const struct nvkm_subdev *user)
{
 if (unlikely(!falcon))
  return;

 mutex_lock(&falcon->mutex);
 if (falcon->user == user) {
  nvkm_debug(falcon->user, "released %s falcon\n", falcon->name);
  falcon->user = ((void*)0);
 }
 mutex_unlock(&falcon->mutex);
}
