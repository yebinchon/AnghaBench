
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {scalar_t__ card_type; int chipset; } ;
struct io_mapping {int dummy; } ;


 int NV04_PFB_CFG0 ;
 int NV10_PFB_REFCTRL ;
 int NV10_PFB_REFCTRL_VALID_1 ;
 scalar_t__ NV_11 ;
 int fbmem_fini (struct io_mapping*) ;
 struct io_mapping* fbmem_init (struct nvkm_device*) ;
 int fbmem_peek (struct io_mapping*,int) ;
 int fbmem_poke (struct io_mapping*,int,int) ;
 int nvkm_error (struct nvkm_subdev*,char*) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int const) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int ) ;

__attribute__((used)) static void
nv10_devinit_meminit(struct nvkm_devinit *init)
{
 struct nvkm_subdev *subdev = &init->subdev;
 struct nvkm_device *device = subdev->device;
 static const int mem_width[] = { 0x10, 0x00, 0x20 };
 int mem_width_count;
 uint32_t patt = 0xdeadbeef;
 struct io_mapping *fb;
 int i, j, k;

 if (device->card_type >= NV_11 && device->chipset >= 0x17)
  mem_width_count = 3;
 else
  mem_width_count = 2;


 fb = fbmem_init(device);
 if (!fb) {
  nvkm_error(subdev, "failed to map fb\n");
  return;
 }

 nvkm_wr32(device, NV10_PFB_REFCTRL, NV10_PFB_REFCTRL_VALID_1);


 for (i = 0; i < mem_width_count; i++) {
  nvkm_mask(device, NV04_PFB_CFG0, 0x30, mem_width[i]);

  for (j = 0; j < 4; j++) {
   for (k = 0; k < 4; k++)
    fbmem_poke(fb, 0x1c, 0);

   fbmem_poke(fb, 0x1c, patt);
   fbmem_poke(fb, 0x3c, 0);

   if (fbmem_peek(fb, 0x1c) == patt)
    goto mem_width_found;
  }
 }

mem_width_found:
 patt <<= 1;


 for (i = 0; i < 4; i++) {
  int off = nvkm_rd32(device, 0x10020c) - 0x100000;

  fbmem_poke(fb, off, patt);
  fbmem_poke(fb, 0, 0);

  fbmem_peek(fb, 0);
  fbmem_peek(fb, 0);
  fbmem_peek(fb, 0);
  fbmem_peek(fb, 0);

  if (fbmem_peek(fb, off) == patt)
   goto amount_found;
 }


 nvkm_mask(device, NV04_PFB_CFG0, 0x1000, 0);

amount_found:
 fbmem_fini(fb);
}
