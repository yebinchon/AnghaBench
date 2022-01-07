
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cyttsp4_bits_2_bytes(unsigned int nbits, size_t *max)
{
 *max = 1UL << nbits;
 return (nbits + 7) / 8;
}
