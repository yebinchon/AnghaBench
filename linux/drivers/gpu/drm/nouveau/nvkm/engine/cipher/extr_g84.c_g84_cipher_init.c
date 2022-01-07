
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static int
g84_cipher_init(struct nvkm_engine *cipher)
{
 struct nvkm_device *device = cipher->subdev.device;
 nvkm_wr32(device, 0x102130, 0xffffffff);
 nvkm_wr32(device, 0x102140, 0xffffffbf);
 nvkm_wr32(device, 0x10200c, 0x00000010);
 return 0;
}
