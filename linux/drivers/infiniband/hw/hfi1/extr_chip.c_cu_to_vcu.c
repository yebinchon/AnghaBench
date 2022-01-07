
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ilog2 (int ) ;

__attribute__((used)) static u8 cu_to_vcu(u32 cu)
{
 return ilog2(cu);
}
