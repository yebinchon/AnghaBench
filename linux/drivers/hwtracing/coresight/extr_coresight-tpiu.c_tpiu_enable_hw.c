
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpiu_drvdata {int base; } ;


 int CS_LOCK (int ) ;
 int CS_UNLOCK (int ) ;

__attribute__((used)) static void tpiu_enable_hw(struct tpiu_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);



 CS_LOCK(drvdata->base);
}
