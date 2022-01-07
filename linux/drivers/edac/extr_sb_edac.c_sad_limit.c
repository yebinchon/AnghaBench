
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int GET_BITFIELD (int ,int,int) ;

__attribute__((used)) static u64 sad_limit(u32 reg)
{
 return (GET_BITFIELD(reg, 6, 25) << 26) | 0x3ffffff;
}
