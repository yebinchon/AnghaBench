
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 scalar_t__ GET_BITFIELD (int ,int,int) ;

__attribute__((used)) static u64 rir_limit(u32 reg)
{
 return ((u64)GET_BITFIELD(reg, 1, 10) << 29) | 0x1fffffff;
}
