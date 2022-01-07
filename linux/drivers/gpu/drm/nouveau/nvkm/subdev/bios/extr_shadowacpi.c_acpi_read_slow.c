
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_bios {int data; } ;


 int nouveau_acpi_get_bios_chunk (int ,int,int) ;
 scalar_t__ nvbios_extend (struct nvkm_bios*,int) ;

__attribute__((used)) static u32
acpi_read_slow(void *data, u32 offset, u32 length, struct nvkm_bios *bios)
{
 u32 limit = (offset + length + 0xfff) & ~0xfff;
 u32 start = offset & ~0xfff;
 u32 fetch = 0;

 if (nvbios_extend(bios, limit) >= 0) {
  while (start + fetch < limit) {
   int ret = nouveau_acpi_get_bios_chunk(bios->data,
             start + fetch,
             0x1000);
   if (ret != 0x1000)
    break;
   fetch += 0x1000;
  }
 }

 return fetch;
}
