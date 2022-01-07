
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usif_notify {int dummy; } ;
struct nvif_ioctl_ntfy_del_v0 {int index; } ;
struct nvif_client {int dummy; } ;
struct nouveau_cli {struct nvif_client base; } ;
struct drm_file {int dummy; } ;


 int ENOENT ;
 int ENOSYS ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 int nvif_client_ioctl (struct nvif_client*,void*,int ) ;
 int nvif_unpack (int,void**,int *,struct nvif_ioctl_ntfy_del_v0,int ,int ,int) ;
 int usif_notify_dtor (struct usif_notify*) ;
 struct usif_notify* usif_notify_find (struct drm_file*,int ) ;

__attribute__((used)) static int
usif_notify_del(struct drm_file *f, void *data, u32 size, void *argv, u32 argc)
{
 struct nouveau_cli *cli = nouveau_cli(f);
 struct nvif_client *client = &cli->base;
 union {
  struct nvif_ioctl_ntfy_del_v0 v0;
 } *args = data;
 struct usif_notify *ntfy;
 int ret = -ENOSYS;

 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 1))) {
  if (!(ntfy = usif_notify_find(f, args->v0.index)))
   return -ENOENT;
 } else
  return ret;

 ret = nvif_client_ioctl(client, argv, argc);
 if (ret == 0)
  usif_notify_dtor(ntfy);
 return ret;
}
