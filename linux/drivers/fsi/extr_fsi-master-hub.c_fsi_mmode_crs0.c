
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FSI_MMODE_CRS0MASK ;
 int FSI_MMODE_CRS0SHFT ;

__attribute__((used)) static inline u32 fsi_mmode_crs0(u32 x)
{
 return (x & FSI_MMODE_CRS0MASK) << FSI_MMODE_CRS0SHFT;
}
