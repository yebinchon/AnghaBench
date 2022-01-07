
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;


 int nvbios_volt_table (struct nvkm_bios*,int*,int*,int*,int*) ;

u32
nvbios_volt_entry(struct nvkm_bios *bios, int idx, u8 *ver, u8 *len)
{
 u8 hdr, cnt;
 u32 volt = nvbios_volt_table(bios, ver, &hdr, &cnt, len);
 if (volt && idx < cnt) {
  volt = volt + hdr + (idx * *len);
  return volt;
 }
 return 0;
}
