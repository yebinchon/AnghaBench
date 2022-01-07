
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm_drvdata {scalar_t__ base; } ;


 scalar_t__ CORESIGHT_DEVID ;
 int STM_32_CHANNEL ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 stm_num_stimulus_port(struct stm_drvdata *drvdata)
{
 u32 numsp;

 numsp = readl_relaxed(drvdata->base + CORESIGHT_DEVID);




 numsp &= 0x1ffff;
 if (!numsp)
  numsp = STM_32_CHANNEL;
 return numsp;
}
