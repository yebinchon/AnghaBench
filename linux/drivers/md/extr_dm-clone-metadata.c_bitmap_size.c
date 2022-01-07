
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_TO_LONGS (unsigned long) ;

__attribute__((used)) static size_t bitmap_size(unsigned long nr_bits)
{
 return BITS_TO_LONGS(nr_bits) * sizeof(long);
}
