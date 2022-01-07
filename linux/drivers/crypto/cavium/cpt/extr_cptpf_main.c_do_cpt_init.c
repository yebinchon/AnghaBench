
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct microcode {scalar_t__ num_cores; scalar_t__ group; void* core_mask; int version; scalar_t__ is_ae; } ;
struct device {int dummy; } ;
struct cpt_device {scalar_t__ max_ae_cores; scalar_t__ next_group; scalar_t__ max_se_cores; int flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int AE_TYPES ;
 int CPT_FLAG_DEVICE_READY ;
 scalar_t__ CPT_MAX_CORE_GROUPS ;
 int EINVAL ;
 int ENFILE ;
 void* GENMASK (scalar_t__,int ) ;
 int SE_TYPES ;
 int cpt_configure_group (struct cpt_device*,scalar_t__,void*,int ) ;
 int cpt_disable_all_interrupts (struct cpt_device*) ;
 int cpt_disable_cores (struct cpt_device*,void*,int ,scalar_t__) ;
 int cpt_enable_cores (struct cpt_device*,void*,int ) ;
 int cpt_enable_mbox_interrupts (struct cpt_device*) ;
 int cpt_load_microcode (struct cpt_device*,struct microcode*) ;
 int dev_err (struct device*,char*,...) ;

__attribute__((used)) static int do_cpt_init(struct cpt_device *cpt, struct microcode *mcode)
{
 int ret = 0;
 struct device *dev = &cpt->pdev->dev;


 cpt->flags &= ~CPT_FLAG_DEVICE_READY;

 cpt_disable_all_interrupts(cpt);

 if (mcode->is_ae) {
  if (mcode->num_cores > cpt->max_ae_cores) {
   dev_err(dev, "Requested for more cores than available AE cores\n");
   ret = -EINVAL;
   goto cpt_init_fail;
  }

  if (cpt->next_group >= CPT_MAX_CORE_GROUPS) {
   dev_err(dev, "Can't load, all eight microcode groups in use");
   return -ENFILE;
  }

  mcode->group = cpt->next_group;

  mcode->core_mask = GENMASK(mcode->num_cores, 0);
  cpt_disable_cores(cpt, mcode->core_mask, AE_TYPES,
      mcode->group);

  ret = cpt_load_microcode(cpt, mcode);
  if (ret) {
   dev_err(dev, "Microcode load Failed for %s\n",
    mcode->version);
   goto cpt_init_fail;
  }
  cpt->next_group++;

  cpt_configure_group(cpt, mcode->group, mcode->core_mask,
        AE_TYPES);

  cpt_enable_cores(cpt, mcode->core_mask, AE_TYPES);
 } else {
  if (mcode->num_cores > cpt->max_se_cores) {
   dev_err(dev, "Requested for more cores than available SE cores\n");
   ret = -EINVAL;
   goto cpt_init_fail;
  }
  if (cpt->next_group >= CPT_MAX_CORE_GROUPS) {
   dev_err(dev, "Can't load, all eight microcode groups in use");
   return -ENFILE;
  }

  mcode->group = cpt->next_group;

  mcode->core_mask = GENMASK(mcode->num_cores, 0);
  cpt_disable_cores(cpt, mcode->core_mask, SE_TYPES,
      mcode->group);

  ret = cpt_load_microcode(cpt, mcode);
  if (ret) {
   dev_err(dev, "Microcode load Failed for %s\n",
    mcode->version);
   goto cpt_init_fail;
  }
  cpt->next_group++;

  cpt_configure_group(cpt, mcode->group, mcode->core_mask,
        SE_TYPES);

  cpt_enable_cores(cpt, mcode->core_mask, SE_TYPES);
 }


 cpt_enable_mbox_interrupts(cpt);
 cpt->flags |= CPT_FLAG_DEVICE_READY;

 return ret;

cpt_init_fail:

 cpt_enable_mbox_interrupts(cpt);

 return ret;
}
