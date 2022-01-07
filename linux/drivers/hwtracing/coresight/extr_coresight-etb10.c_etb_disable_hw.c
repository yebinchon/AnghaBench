
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etb_drvdata {int base; } ;


 int __etb_disable_hw (struct etb_drvdata*) ;
 int coresight_disclaim_device (int ) ;
 int etb_dump_hw (struct etb_drvdata*) ;

__attribute__((used)) static void etb_disable_hw(struct etb_drvdata *drvdata)
{
 __etb_disable_hw(drvdata);
 etb_dump_hw(drvdata);
 coresight_disclaim_device(drvdata->base);
}
