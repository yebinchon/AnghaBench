
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int* _4bit_to_alaw ;
 int* _4bit_to_ulaw ;
 int* alaw_to_4bit ;
 int l1oip_4bit_free () ;
 int* table_com ;
 int* table_dec ;
 int* ulaw_to_4bit ;
 int* vzalloc (int) ;

int
l1oip_4bit_alloc(int ulaw)
{
 int i1, i2, c, sample;


 if (table_dec)
  return 0;


 table_com = vzalloc(65536);
 table_dec = vzalloc(512);
 if (!table_com || !table_dec) {
  l1oip_4bit_free();
  return -ENOMEM;
 }

 i1 = 0;
 while (i1 < 256) {
  if (ulaw)
   c = ulaw_to_4bit[i1];
  else
   c = alaw_to_4bit[i1];
  i2 = 0;
  while (i2 < 256) {
   table_com[(i1 << 8) | i2] |= (c << 4);
   table_com[(i2 << 8) | i1] |= c;
   i2++;
  }
  i1++;
 }


 i1 = 0;
 while (i1 < 16) {
  if (ulaw)
   sample = _4bit_to_ulaw[i1];
  else
   sample = _4bit_to_alaw[i1];
  i2 = 0;
  while (i2 < 16) {
   table_dec[(i1 << 4) | i2] |= (sample << 8);
   table_dec[(i2 << 4) | i1] |= sample;
   i2++;
  }
  i1++;
 }

 return 0;
}
