
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_drvdata {int stmspscr; int stmsper; scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ STMSPER ;
 scalar_t__ STMSPSCR ;
 scalar_t__ STMSPTRIGCSR ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm_port_enable_hw(struct stm_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);

 writel_relaxed(0x10,
         drvdata->base + STMSPTRIGCSR);
 writel_relaxed(drvdata->stmspscr, drvdata->base + STMSPSCR);
 writel_relaxed(drvdata->stmsper, drvdata->base + STMSPER);

 CS_LOCK(drvdata->base);
}
