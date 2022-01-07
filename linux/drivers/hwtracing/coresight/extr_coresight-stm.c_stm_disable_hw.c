
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm_drvdata {scalar_t__ stmheer; scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ STMTCSR ;
 int readl_relaxed (scalar_t__) ;
 int stm_hwevent_disable_hw (struct stm_drvdata*) ;
 int stm_port_disable_hw (struct stm_drvdata*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm_disable_hw(struct stm_drvdata *drvdata)
{
 u32 val;

 CS_UNLOCK(drvdata->base);

 val = readl_relaxed(drvdata->base + STMTCSR);
 val &= ~0x1;
 writel_relaxed(val, drvdata->base + STMTCSR);

 CS_LOCK(drvdata->base);

 stm_port_disable_hw(drvdata);
 if (drvdata->stmheer)
  stm_hwevent_disable_hw(drvdata);
}
