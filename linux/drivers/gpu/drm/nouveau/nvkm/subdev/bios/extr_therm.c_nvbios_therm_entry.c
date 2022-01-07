
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;


 scalar_t__ therm_table (struct nvkm_bios*,int*,int*,int*,int*) ;

__attribute__((used)) static u32
nvbios_therm_entry(struct nvkm_bios *bios, int idx, u8 *ver, u8 *len)
{
 u8 hdr, cnt;
 u32 therm = therm_table(bios, ver, &hdr, len, &cnt);
 if (therm && idx < cnt)
  return therm + idx * *len;
 return 0;
}
