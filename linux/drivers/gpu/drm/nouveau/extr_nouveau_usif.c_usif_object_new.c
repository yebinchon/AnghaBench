
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usif_object {unsigned long token; int route; int head; } ;
struct nvif_ioctl_new_v0 {unsigned long token; int route; } ;
struct nvif_client {int dummy; } ;
struct nouveau_cli {int objects; struct nvif_client base; } ;
struct drm_file {int dummy; } ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int NVDRM_OBJECT_USIF ;
 struct usif_object* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 int nvif_client_ioctl (struct nvif_client*,void*,int ) ;
 int nvif_unpack (int,void**,int *,struct nvif_ioctl_new_v0,int ,int ,int) ;
 int usif_object_dtor (struct usif_object*) ;

__attribute__((used)) static int
usif_object_new(struct drm_file *f, void *data, u32 size, void *argv, u32 argc)
{
 struct nouveau_cli *cli = nouveau_cli(f);
 struct nvif_client *client = &cli->base;
 union {
  struct nvif_ioctl_new_v0 v0;
 } *args = data;
 struct usif_object *object;
 int ret = -ENOSYS;

 if (!(object = kmalloc(sizeof(*object), GFP_KERNEL)))
  return -ENOMEM;
 list_add(&object->head, &cli->objects);

 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 1))) {
  object->route = args->v0.route;
  object->token = args->v0.token;
  args->v0.route = NVDRM_OBJECT_USIF;
  args->v0.token = (unsigned long)(void *)object;
  ret = nvif_client_ioctl(client, argv, argc);
  args->v0.token = object->token;
  args->v0.route = object->route;
 }

 if (ret)
  usif_object_dtor(object);
 return ret;
}
