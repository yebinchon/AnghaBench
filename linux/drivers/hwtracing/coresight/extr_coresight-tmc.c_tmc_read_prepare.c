
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {int config_type; TYPE_1__* csdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;



 int dev_dbg (int *,char*) ;
 int tmc_read_prepare_etb (struct tmc_drvdata*) ;
 int tmc_read_prepare_etr (struct tmc_drvdata*) ;

__attribute__((used)) static int tmc_read_prepare(struct tmc_drvdata *drvdata)
{
 int ret = 0;

 switch (drvdata->config_type) {
 case 130:
 case 129:
  ret = tmc_read_prepare_etb(drvdata);
  break;
 case 128:
  ret = tmc_read_prepare_etr(drvdata);
  break;
 default:
  ret = -EINVAL;
 }

 if (!ret)
  dev_dbg(&drvdata->csdev->dev, "TMC read start\n");

 return ret;
}
