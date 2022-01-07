
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_GPHY1_CR ;
 int CGU_TEMP_PD ;
 int ltq_cgu_r32 (int ) ;
 int ltq_cgu_w32 (int,int ) ;

__attribute__((used)) static void ltq_cputemp_disable(void *data)
{
 ltq_cgu_w32(ltq_cgu_r32(CGU_GPHY1_CR) & ~CGU_TEMP_PD, CGU_GPHY1_CR);
}
