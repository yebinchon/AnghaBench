
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long get_bits(unsigned long data, int pos, int width)
{
 return (data >> pos) & ((1 << width) - 1);
}
