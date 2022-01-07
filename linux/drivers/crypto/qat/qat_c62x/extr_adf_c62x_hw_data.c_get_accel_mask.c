
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ADF_C62X_ACCELERATORS_MASK ;
 int ADF_C62X_ACCELERATORS_REG_OFFSET ;

__attribute__((used)) static u32 get_accel_mask(u32 fuse)
{
 return (~fuse) >> ADF_C62X_ACCELERATORS_REG_OFFSET &
     ADF_C62X_ACCELERATORS_MASK;
}
