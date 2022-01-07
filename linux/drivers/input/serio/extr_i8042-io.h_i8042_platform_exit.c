
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_DATA_REG ;
 int release_region (int ,int) ;

__attribute__((used)) static inline void i8042_platform_exit(void)
{

 release_region(I8042_DATA_REG, 16);

}
