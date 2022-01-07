
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FSI_MMODE_CRS1MASK ;
 int FSI_MMODE_CRS1SHFT ;

__attribute__((used)) static inline u32 fsi_mmode_crs1(u32 x)
{
 return (x & FSI_MMODE_CRS1MASK) << FSI_MMODE_CRS1SHFT;
}
