
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct nvkm_xtensa {int addr; TYPE_2__* func; int gpu_fw; TYPE_1__ engine; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dev; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef int name ;
struct TYPE_4__ {int unkd28; } ;


 int EINVAL ;
 int NVKM_MEM_TARGET_INST ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;
 int nvkm_memory_addr (int ) ;
 int nvkm_memory_new (struct nvkm_device*,int ,int,int,int,int *) ;
 int nvkm_memory_size (int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_warn (struct nvkm_subdev*,char*,char*) ;
 int nvkm_wo32 (int ,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int const,int) ;
 struct nvkm_xtensa* nvkm_xtensa (struct nvkm_engine*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
nvkm_xtensa_init(struct nvkm_engine *engine)
{
 struct nvkm_xtensa *xtensa = nvkm_xtensa(engine);
 struct nvkm_subdev *subdev = &xtensa->engine.subdev;
 struct nvkm_device *device = subdev->device;
 const u32 base = xtensa->addr;
 const struct firmware *fw;
 char name[32];
 int i, ret;
 u64 addr, size;
 u32 tmp;

 if (!xtensa->gpu_fw) {
  snprintf(name, sizeof(name), "nouveau/nv84_xuc%03x",
    xtensa->addr >> 12);

  ret = request_firmware(&fw, name, device->dev);
  if (ret) {
   nvkm_warn(subdev, "unable to load firmware %s\n", name);
   return ret;
  }

  if (fw->size > 0x40000) {
   nvkm_warn(subdev, "firmware %s too large\n", name);
   release_firmware(fw);
   return -EINVAL;
  }

  ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST,
          0x40000, 0x1000, 0,
          &xtensa->gpu_fw);
  if (ret) {
   release_firmware(fw);
   return ret;
  }

  nvkm_kmap(xtensa->gpu_fw);
  for (i = 0; i < fw->size / 4; i++)
   nvkm_wo32(xtensa->gpu_fw, i * 4, *((u32 *)fw->data + i));
  nvkm_done(xtensa->gpu_fw);
  release_firmware(fw);
 }

 addr = nvkm_memory_addr(xtensa->gpu_fw);
 size = nvkm_memory_size(xtensa->gpu_fw);

 nvkm_wr32(device, base + 0xd10, 0x1fffffff);
 nvkm_wr32(device, base + 0xd08, 0x0fffffff);

 nvkm_wr32(device, base + 0xd28, xtensa->func->unkd28);
 nvkm_wr32(device, base + 0xc20, 0x3f);
 nvkm_wr32(device, base + 0xd84, 0x3f);

 nvkm_wr32(device, base + 0xcc0, addr >> 8);
 nvkm_wr32(device, base + 0xcc4, 0x1c);
 nvkm_wr32(device, base + 0xcc8, size >> 8);

 tmp = nvkm_rd32(device, 0x0);
 nvkm_wr32(device, base + 0xde0, tmp);

 nvkm_wr32(device, base + 0xce8, 0xf);

 nvkm_wr32(device, base + 0xc20, 0x3f);
 nvkm_wr32(device, base + 0xd84, 0x3f);
 return 0;
}
