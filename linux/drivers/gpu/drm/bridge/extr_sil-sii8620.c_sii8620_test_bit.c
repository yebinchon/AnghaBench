
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int BITS_PER_BYTE ;

__attribute__((used)) static bool sii8620_test_bit(unsigned int nr, const u8 *addr)
{
 return 1 & (addr[nr / BITS_PER_BYTE] >> (nr % BITS_PER_BYTE));
}
