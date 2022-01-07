
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct funnel_drvdata {scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ FUNNEL_FUNCTL ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 get_funnel_ctrl_hw(struct funnel_drvdata *drvdata)
{
 u32 functl;

 CS_UNLOCK(drvdata->base);
 functl = readl_relaxed(drvdata->base + FUNNEL_FUNCTL);
 CS_LOCK(drvdata->base);

 return functl;
}
