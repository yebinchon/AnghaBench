
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int notifier_call; } ;
struct cc_fips_handle {TYPE_1__ nb; struct cc_drvdata* drvdata; int tasklet; } ;
struct cc_drvdata {scalar_t__ hw_rev; struct cc_fips_handle* fips_handle; } ;


 scalar_t__ CC_HW_REV_712 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_notifier_chain_register (int *,TYPE_1__*) ;
 int cc_ree_fips_failure ;
 int cc_tee_handle_fips_error (struct cc_drvdata*) ;
 int dev_dbg (struct device*,char*) ;
 struct cc_fips_handle* devm_kzalloc (struct device*,int,int ) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int fips_dsr ;
 int fips_fail_notif_chain ;
 int tasklet_init (int *,int ,unsigned long) ;

int cc_fips_init(struct cc_drvdata *p_drvdata)
{
 struct cc_fips_handle *fips_h;
 struct device *dev = drvdata_to_dev(p_drvdata);

 if (p_drvdata->hw_rev < CC_HW_REV_712)
  return 0;

 fips_h = devm_kzalloc(dev, sizeof(*fips_h), GFP_KERNEL);
 if (!fips_h)
  return -ENOMEM;

 p_drvdata->fips_handle = fips_h;

 dev_dbg(dev, "Initializing fips tasklet\n");
 tasklet_init(&fips_h->tasklet, fips_dsr, (unsigned long)p_drvdata);
 fips_h->drvdata = p_drvdata;
 fips_h->nb.notifier_call = cc_ree_fips_failure;
 atomic_notifier_chain_register(&fips_fail_notif_chain, &fips_h->nb);

 cc_tee_handle_fips_error(p_drvdata);

 return 0;
}
