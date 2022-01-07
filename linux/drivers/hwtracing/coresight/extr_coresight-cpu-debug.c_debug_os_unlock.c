
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_drvdata {scalar_t__ base; } ;


 scalar_t__ EDOSLAR ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void debug_os_unlock(struct debug_drvdata *drvdata)
{

 writel_relaxed(0x0, drvdata->base + EDOSLAR);


 wmb();
}
