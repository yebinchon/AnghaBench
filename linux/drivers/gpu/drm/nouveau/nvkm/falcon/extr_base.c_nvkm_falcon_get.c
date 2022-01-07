
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {size_t index; } ;
struct nvkm_falcon {int mutex; struct nvkm_subdev const* user; int name; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_debug (struct nvkm_subdev const*,char*,int ) ;
 int nvkm_error (struct nvkm_subdev const*,char*,int ,int ) ;
 int * nvkm_subdev_name ;

int
nvkm_falcon_get(struct nvkm_falcon *falcon, const struct nvkm_subdev *user)
{
 mutex_lock(&falcon->mutex);
 if (falcon->user) {
  nvkm_error(user, "%s falcon already acquired by %s!\n",
      falcon->name, nvkm_subdev_name[falcon->user->index]);
  mutex_unlock(&falcon->mutex);
  return -EBUSY;
 }

 nvkm_debug(user, "acquired %s falcon\n", falcon->name);
 falcon->user = user;
 mutex_unlock(&falcon->mutex);
 return 0;
}
