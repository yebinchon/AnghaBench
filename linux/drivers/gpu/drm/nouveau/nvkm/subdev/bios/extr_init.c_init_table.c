
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvkm_bios {int bmp_offset; } ;
struct bit_entry {int length; int offset; } ;


 int bit_entry (struct nvkm_bios*,char,struct bit_entry*) ;
 int bmp_version (struct nvkm_bios*) ;

__attribute__((used)) static u16
init_table(struct nvkm_bios *bios, u16 *len)
{
 struct bit_entry bit_I;

 if (!bit_entry(bios, 'I', &bit_I)) {
  *len = bit_I.length;
  return bit_I.offset;
 }

 if (bmp_version(bios) >= 0x0510) {
  *len = 14;
  return bios->bmp_offset + 75;
 }

 return 0x0000;
}
