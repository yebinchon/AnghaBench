
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t qat_hal_parity_64bit(uint64_t word)
{
 word ^= word >> 1;
 word ^= word >> 2;
 word ^= word >> 4;
 word ^= word >> 8;
 word ^= word >> 16;
 word ^= word >> 32;
 return word & 1;
}
