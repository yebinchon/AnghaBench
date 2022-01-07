
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;



__attribute__((used)) static u64 widen_32_to_64(u32 narrow, u64 near)
{
 return near + (s32) (narrow - near);
}
