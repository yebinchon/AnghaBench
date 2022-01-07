
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct usif_notify {TYPE_4__* p; int enabled; scalar_t__ reply; } ;
struct nvif_ioctl_ntfy_del_v0 {int index; } ;
struct nvif_client {int dummy; } ;
struct nouveau_cli {struct nvif_client base; } ;
struct drm_file {int dummy; } ;
struct TYPE_7__ {scalar_t__ length; int type; } ;
struct TYPE_8__ {TYPE_2__ base; } ;
struct TYPE_6__ {struct drm_file* file_priv; TYPE_2__* event; } ;
struct TYPE_9__ {TYPE_3__ e; TYPE_1__ base; } ;


 int DRM_NOUVEAU_EVENT_NVIF ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 scalar_t__ atomic_xchg (int *,int) ;
 int kfree (TYPE_4__*) ;
 TYPE_4__* kmalloc (scalar_t__,int ) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 int nvif_client_ioctl (struct nvif_client*,void*,int ) ;
 int nvif_unpack (int,void**,int *,struct nvif_ioctl_ntfy_del_v0,int ,int ,int) ;
 struct usif_notify* usif_notify_find (struct drm_file*,int ) ;

__attribute__((used)) static int
usif_notify_get(struct drm_file *f, void *data, u32 size, void *argv, u32 argc)
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

 if (atomic_xchg(&ntfy->enabled, 1))
  return 0;

 ntfy->p = kmalloc(sizeof(*ntfy->p) + ntfy->reply, GFP_KERNEL);
 if (ret = -ENOMEM, !ntfy->p)
  goto done;
 ntfy->p->base.event = &ntfy->p->e.base;
 ntfy->p->base.file_priv = f;
 ntfy->p->e.base.type = DRM_NOUVEAU_EVENT_NVIF;
 ntfy->p->e.base.length = sizeof(ntfy->p->e.base) + ntfy->reply;

 ret = nvif_client_ioctl(client, argv, argc);
done:
 if (ret) {
  atomic_set(&ntfy->enabled, 0);
  kfree(ntfy->p);
 }
 return ret;
}
