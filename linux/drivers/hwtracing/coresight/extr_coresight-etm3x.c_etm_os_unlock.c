
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_drvdata {int os_unlock; } ;


 int ETMOSLAR ;
 int etm_writel (struct etm_drvdata*,int,int ) ;
 int isb () ;

__attribute__((used)) static void etm_os_unlock(struct etm_drvdata *drvdata)
{

 etm_writel(drvdata, 0x0, ETMOSLAR);
 drvdata->os_unlock = 1;
 isb();
}
