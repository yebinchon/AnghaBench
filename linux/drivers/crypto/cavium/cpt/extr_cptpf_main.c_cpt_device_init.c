
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct device {int dummy; } ;
struct cpt_device {int flags; scalar_t__ next_group; scalar_t__ next_mc_idx; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int CPT_FLAG_DEVICE_READY ;
 int ENODEV ;
 scalar_t__ cpt_check_bist_status (struct cpt_device*) ;
 scalar_t__ cpt_check_exe_bist_status (struct cpt_device*) ;
 int cpt_disable_all_cores (struct cpt_device*) ;
 int cpt_find_max_enabled_cores (struct cpt_device*) ;
 int cpt_reset (struct cpt_device*) ;
 int dev_err (struct device*,char*,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int cpt_device_init(struct cpt_device *cpt)
{
 u64 bist;
 struct device *dev = &cpt->pdev->dev;


 cpt_reset(cpt);
 msleep(100);


 bist = (u64)cpt_check_bist_status(cpt);
 if (bist) {
  dev_err(dev, "RAM BIST failed with code 0x%llx", bist);
  return -ENODEV;
 }

 bist = cpt_check_exe_bist_status(cpt);
 if (bist) {
  dev_err(dev, "Engine BIST failed with code 0x%llx", bist);
  return -ENODEV;
 }



 cpt_find_max_enabled_cores(cpt);

 cpt_disable_all_cores(cpt);

 cpt->next_mc_idx = 0;
 cpt->next_group = 0;

 cpt->flags |= CPT_FLAG_DEVICE_READY;

 return 0;
}
