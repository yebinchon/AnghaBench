
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_fips_handle {int tasklet; int nb; } ;
struct cc_drvdata {scalar_t__ hw_rev; struct cc_fips_handle* fips_handle; } ;


 scalar_t__ CC_HW_REV_712 ;
 int atomic_notifier_chain_unregister (int *,int *) ;
 int fips_fail_notif_chain ;
 int tasklet_kill (int *) ;

void cc_fips_fini(struct cc_drvdata *drvdata)
{
 struct cc_fips_handle *fips_h = drvdata->fips_handle;

 if (drvdata->hw_rev < CC_HW_REV_712 || !fips_h)
  return;

 atomic_notifier_chain_unregister(&fips_fail_notif_chain, &fips_h->nb);


 tasklet_kill(&fips_h->tasklet);
 drvdata->fips_handle = ((void*)0);
}
