
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_drvdata {int dummy; } ;


 int drvdata_to_dev (struct cc_drvdata*) ;
 int pm_runtime_disable (int ) ;

void cc_pm_fini(struct cc_drvdata *drvdata)
{
 pm_runtime_disable(drvdata_to_dev(drvdata));
}
