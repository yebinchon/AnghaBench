
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;



__attribute__((used)) static inline int psn_compare(u32 psn_a, u32 psn_b)
{
 s32 diff;

 diff = (psn_a - psn_b) << 8;
 return diff;
}
