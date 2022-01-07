
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char dht11_decode_byte(char *bits)
{
 unsigned char ret = 0;
 int i;

 for (i = 0; i < 8; ++i) {
  ret <<= 1;
  if (bits[i])
   ++ret;
 }

 return ret;
}
