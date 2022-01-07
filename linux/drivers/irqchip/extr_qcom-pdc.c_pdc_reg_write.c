
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ pdc_base ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void pdc_reg_write(int reg, u32 i, u32 val)
{
 writel_relaxed(val, pdc_base + reg + i * sizeof(u32));
}
