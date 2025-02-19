
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_extdev_func {int type; int addr; int bus; } ;


 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;

__attribute__((used)) static void
extdev_parse_entry(struct nvkm_bios *bios, u16 offset,
     struct nvbios_extdev_func *entry)
{
 entry->type = nvbios_rd08(bios, offset + 0);
 entry->addr = nvbios_rd08(bios, offset + 1);
 entry->bus = (nvbios_rd08(bios, offset + 2) >> 4) & 1;
}
