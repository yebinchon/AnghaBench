
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint8_t get_nibble_at_index(const uint8_t *buf,
 uint32_t index)
{
 uint8_t nibble;
 nibble = buf[index / 2];

 if (index % 2)
  nibble >>= 4;
 else
  nibble &= 0x0F;

 return nibble;
}
