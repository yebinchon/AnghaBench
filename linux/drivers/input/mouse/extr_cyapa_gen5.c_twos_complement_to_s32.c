
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



__attribute__((used)) static s32 twos_complement_to_s32(s32 value, int num_bits)
{
 if (value >> (num_bits - 1))
  value |= -1 << num_bits;
 return value;
}
