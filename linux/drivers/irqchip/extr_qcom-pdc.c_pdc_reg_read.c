
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ pdc_base ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 pdc_reg_read(int reg, u32 i)
{
 return readl_relaxed(pdc_base + reg + i * sizeof(u32));
}
