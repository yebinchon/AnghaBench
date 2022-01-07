
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;



__attribute__((used)) static inline bool fence_after(u32 a, u32 b)
{
 return (s32)(a - b) > 0;
}
