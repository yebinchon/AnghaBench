
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 void** table_com ;

int
l1oip_law_to_4bit(u8 *data, int len, u8 *result, u32 *state)
{
 int ii, i = 0, o = 0;

 if (!len)
  return 0;


 if (*state) {
  *result++ = table_com[(((*state) << 8) & 0xff00) | (*data++)];
  len--;
  o++;
 }

 ii = len >> 1;

 while (i < ii) {
  *result++ = table_com[(data[0]<<8) | (data[1])];
  data += 2;
  i++;
  o++;
 }


 if (len & 1)
  *state = 0x100 + *data;
 else
  *state = 0;

 return o;
}
