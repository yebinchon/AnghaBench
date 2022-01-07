
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_bios {struct nvkm_subdev subdev; } ;
struct nvbios_pcirT {int image_type; int last; int image_size; } ;
struct nvbios_npdeT {int last; int image_size; } ;
struct nvbios_image {int type; int last; int size; scalar_t__ base; } ;


 int nvbios_npdeTp (struct nvkm_bios*,scalar_t__,struct nvbios_npdeT*) ;
 int nvbios_pcirTp (struct nvkm_bios*,scalar_t__,int *,int *,struct nvbios_pcirT*) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;
 int nvkm_debug (struct nvkm_subdev*,char*,scalar_t__,int ) ;

__attribute__((used)) static bool
nvbios_imagen(struct nvkm_bios *bios, struct nvbios_image *image)
{
 struct nvkm_subdev *subdev = &bios->subdev;
 struct nvbios_pcirT pcir;
 struct nvbios_npdeT npde;
 u8 ver;
 u16 hdr;
 u32 data;

 switch ((data = nvbios_rd16(bios, image->base + 0x00))) {
 case 0xaa55:
 case 0xbb77:
 case 0x4e56:
  break;
 default:
  nvkm_debug(subdev, "%08x: ROM signature (%04x) unknown\n",
      image->base, data);
  return 0;
 }

 if (!(data = nvbios_pcirTp(bios, image->base, &ver, &hdr, &pcir)))
  return 0;
 image->size = pcir.image_size;
 image->type = pcir.image_type;
 image->last = pcir.last;

 if (image->type != 0x70) {
  if (!(data = nvbios_npdeTp(bios, image->base, &npde)))
   return 1;
  image->size = npde.image_size;
  image->last = npde.last;
 } else {
  image->last = 1;
 }

 return 1;
}
