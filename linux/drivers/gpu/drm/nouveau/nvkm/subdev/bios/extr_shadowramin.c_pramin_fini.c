
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int bar0; TYPE_2__* bios; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int kfree (struct priv*) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;

__attribute__((used)) static void
pramin_fini(void *data)
{
 struct priv *priv = data;
 if (priv) {
  struct nvkm_device *device = priv->bios->subdev.device;
  nvkm_wr32(device, 0x001700, priv->bar0);
  kfree(priv);
 }
}
