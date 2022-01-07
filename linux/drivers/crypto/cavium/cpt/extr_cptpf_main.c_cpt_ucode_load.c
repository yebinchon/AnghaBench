
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct cpt_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int cpt_ucode_load_fw (struct cpt_device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int cpt_ucode_load(struct cpt_device *cpt)
{
 int ret = 0;
 struct device *dev = &cpt->pdev->dev;

 ret = cpt_ucode_load_fw(cpt, "cpt8x-mc-ae.out", 1);
 if (ret) {
  dev_err(dev, "ae:cpt_ucode_load failed with ret: %d\n", ret);
  return ret;
 }
 ret = cpt_ucode_load_fw(cpt, "cpt8x-mc-se.out", 0);
 if (ret) {
  dev_err(dev, "se:cpt_ucode_load failed with ret: %d\n", ret);
  return ret;
 }

 return ret;
}
