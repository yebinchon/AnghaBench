
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u32 ;



__attribute__((used)) static inline u32 amdgpu_gfx_create_bitmask(u32 bit_width)
{
 return (u32)((1ULL << bit_width) - 1);
}
