
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_drvdata {int traceid; scalar_t__ base; scalar_t__ stmheer; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ STMSYNCR ;
 scalar_t__ STMTCSR ;
 int stm_hwevent_enable_hw (struct stm_drvdata*) ;
 int stm_port_enable_hw (struct stm_drvdata*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm_enable_hw(struct stm_drvdata *drvdata)
{
 if (drvdata->stmheer)
  stm_hwevent_enable_hw(drvdata);

 stm_port_enable_hw(drvdata);

 CS_UNLOCK(drvdata->base);


 writel_relaxed(0xFFF, drvdata->base + STMSYNCR);
 writel_relaxed((drvdata->traceid << 16 |
   0x02 |
   0x01),
   drvdata->base + STMTCSR);

 CS_LOCK(drvdata->base);
}
