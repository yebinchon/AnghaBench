
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_ram_func {int dummy; } ;
struct nvkm_ram {int type; int size; int vram; struct nvkm_fb* fb; struct nvkm_ram_func const* func; } ;
struct nvkm_fb {struct nvkm_subdev subdev; } ;
typedef enum nvkm_ram_type { ____Placeholder_nvkm_ram_type } nvkm_ram_type ;


 int NVKM_RAM_MM_NORMAL ;
 int NVKM_RAM_MM_SHIFT ;
 int nvkm_info (struct nvkm_subdev*,char*,int,char const*) ;
 int nvkm_mm_init (int *,int ,int ,int,int) ;
 int nvkm_mm_initialised (int *) ;

int
nvkm_ram_ctor(const struct nvkm_ram_func *func, struct nvkm_fb *fb,
       enum nvkm_ram_type type, u64 size, struct nvkm_ram *ram)
{
 static const char *name[] = {
  [128] = "of unknown memory type",
  [129 ] = "stolen system memory",
  [130 ] = "SGRAM",
  [131 ] = "SDRAM",
  [141 ] = "DDR1",
  [140 ] = "DDR2",
  [139 ] = "DDR3",
  [138 ] = "GDDR2",
  [137 ] = "GDDR3",
  [136 ] = "GDDR4",
  [135 ] = "GDDR5",
  [134 ] = "GDDR5X",
  [133 ] = "GDDR6",
  [132 ] = "HBM2",
 };
 struct nvkm_subdev *subdev = &fb->subdev;
 int ret;

 nvkm_info(subdev, "%d MiB %s\n", (int)(size >> 20), name[type]);
 ram->func = func;
 ram->fb = fb;
 ram->type = type;
 ram->size = size;

 if (!nvkm_mm_initialised(&ram->vram)) {
  ret = nvkm_mm_init(&ram->vram, NVKM_RAM_MM_NORMAL, 0,
       size >> NVKM_RAM_MM_SHIFT, 1);
  if (ret)
   return ret;
 }

 return 0;
}
