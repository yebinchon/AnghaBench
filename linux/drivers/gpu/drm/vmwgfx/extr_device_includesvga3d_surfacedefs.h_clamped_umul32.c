
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u32 ;



__attribute__((used)) static inline u32 clamped_umul32(u32 a, u32 b)
{
 uint64_t tmp = (uint64_t) a*b;
 return (tmp > (uint64_t) ((u32) -1)) ? (u32) -1 : tmp;
}
