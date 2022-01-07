
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {int chipset; } ;
struct io_mapping {int dummy; } ;


 int NV04_PFB_CFG0 ;
 int NV10_PFB_REFCTRL ;
 int NV10_PFB_REFCTRL_VALID_1 ;
 int fbmem_fini (struct io_mapping*) ;
 struct io_mapping* fbmem_init (struct nvkm_device*) ;
 int fbmem_peek (struct io_mapping*,int) ;
 int fbmem_poke (struct io_mapping*,int,int) ;
 int nvkm_error (struct nvkm_subdev*,char*) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int ) ;

__attribute__((used)) static void
nv20_devinit_meminit(struct nvkm_devinit *init)
{
 struct nvkm_subdev *subdev = &init->subdev;
 struct nvkm_device *device = subdev->device;
 uint32_t mask = (device->chipset >= 0x25 ? 0x300 : 0x900);
 uint32_t amount, off;
 struct io_mapping *fb;


 fb = fbmem_init(device);
 if (!fb) {
  nvkm_error(subdev, "failed to map fb\n");
  return;
 }

 nvkm_wr32(device, NV10_PFB_REFCTRL, NV10_PFB_REFCTRL_VALID_1);


 nvkm_mask(device, NV04_PFB_CFG0, 0, mask);

 amount = nvkm_rd32(device, 0x10020c);
 for (off = amount; off > 0x2000000; off -= 0x2000000)
  fbmem_poke(fb, off - 4, off);

 amount = nvkm_rd32(device, 0x10020c);
 if (amount != fbmem_peek(fb, amount - 4))

  nvkm_mask(device, NV04_PFB_CFG0, mask, 0);

 fbmem_fini(fb);
}
