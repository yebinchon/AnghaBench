
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; int length; scalar_t__ offset; } ;


 scalar_t__ bit_entry (struct nvkm_bios*,char,struct bit_entry*) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 scalar_t__ nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;

__attribute__((used)) static u32
nvbios_power_budget_table(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt,
     u8 *len)
{
 struct bit_entry bit_P;
 u32 power_budget;

 if (bit_entry(bios, 'P', &bit_P) || bit_P.version != 2 ||
     bit_P.length < 0x30)
  return 0;

 power_budget = nvbios_rd32(bios, bit_P.offset + 0x2c);
 if (!power_budget)
  return 0;

 *ver = nvbios_rd08(bios, power_budget);
 switch (*ver) {
 case 0x20:
 case 0x30:
  *hdr = nvbios_rd08(bios, power_budget + 0x1);
  *len = nvbios_rd08(bios, power_budget + 0x2);
  *cnt = nvbios_rd08(bios, power_budget + 0x3);
  return power_budget;
 default:
  break;
 }

 return 0;
}
