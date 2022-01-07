
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv_device_v0 {unsigned long long device; } ;
struct TYPE_2__ {int object; } ;
struct nouveau_cli {struct nouveau_abi16* abi16; TYPE_1__ base; } ;
struct nouveau_abi16 {int device; int channels; } ;
struct drm_file {int dummy; } ;
typedef int args ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NV_DEVICE ;
 int kfree (struct nouveau_abi16*) ;
 struct nouveau_abi16* kzalloc (int,int ) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 scalar_t__ nvif_device_init (int *,int ,int ,struct nv_device_v0*,int,int *) ;

__attribute__((used)) static struct nouveau_abi16 *
nouveau_abi16(struct drm_file *file_priv)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 if (!cli->abi16) {
  struct nouveau_abi16 *abi16;
  cli->abi16 = abi16 = kzalloc(sizeof(*abi16), GFP_KERNEL);
  if (cli->abi16) {
   struct nv_device_v0 args = {
    .device = ~0ULL,
   };

   INIT_LIST_HEAD(&abi16->channels);





   if (nvif_device_init(&cli->base.object, 0, NV_DEVICE,
          &args, sizeof(args),
          &abi16->device) == 0)
    return cli->abi16;

   kfree(cli->abi16);
   cli->abi16 = ((void*)0);
  }
 }
 return cli->abi16;
}
