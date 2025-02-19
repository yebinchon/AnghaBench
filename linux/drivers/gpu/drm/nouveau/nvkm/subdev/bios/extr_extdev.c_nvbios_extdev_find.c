
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_extdev_func {int type; } ;
typedef enum nvbios_extdev_type { ____Placeholder_nvbios_extdev_type } nvbios_extdev_type ;


 int EINVAL ;
 int extdev_parse_entry (struct nvkm_bios*,int ,struct nvbios_extdev_func*) ;
 int nvbios_extdev_entry (struct nvkm_bios*,int ,scalar_t__*,scalar_t__*) ;

int
nvbios_extdev_find(struct nvkm_bios *bios, enum nvbios_extdev_type type,
     struct nvbios_extdev_func *func)
{
 u8 ver, len, i;
 u16 entry;

 i = 0;
 while ((entry = nvbios_extdev_entry(bios, i++, &ver, &len))) {
  extdev_parse_entry(bios, entry, func);
  if (func->type == type)
   return 0;
 }

 return -EINVAL;
}
