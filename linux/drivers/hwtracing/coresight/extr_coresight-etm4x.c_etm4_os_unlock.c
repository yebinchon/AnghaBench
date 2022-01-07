
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_drvdata {int os_unlock; scalar_t__ base; } ;


 scalar_t__ TRCOSLAR ;
 int isb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void etm4_os_unlock(struct etmv4_drvdata *drvdata)
{

 writel_relaxed(0x0, drvdata->base + TRCOSLAR);
 drvdata->os_unlock = 1;
 isb();
}
