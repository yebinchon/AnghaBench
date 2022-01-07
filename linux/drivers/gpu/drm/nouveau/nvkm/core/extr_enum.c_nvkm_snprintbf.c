
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_bitfield {int mask; int name; } ;


 int snprintf (char*,int,char*,char*,int ) ;

void
nvkm_snprintbf(char *data, int size, const struct nvkm_bitfield *bf, u32 value)
{
 bool space = 0;
 while (size >= 1 && bf->name) {
  if (value & bf->mask) {
   int this = snprintf(data, size, "%s%s",
         space ? " " : "", bf->name);
   size -= this;
   data += this;
   space = 1;
  }
  bf++;
 }
 data[0] = '\0';
}
