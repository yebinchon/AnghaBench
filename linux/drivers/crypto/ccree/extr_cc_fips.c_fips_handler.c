
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_fips_handle {int tasklet; } ;
struct cc_drvdata {scalar_t__ hw_rev; struct cc_fips_handle* fips_handle; } ;


 scalar_t__ CC_HW_REV_712 ;
 int tasklet_schedule (int *) ;

void fips_handler(struct cc_drvdata *drvdata)
{
 struct cc_fips_handle *fips_handle_ptr = drvdata->fips_handle;

 if (drvdata->hw_rev < CC_HW_REV_712)
  return;

 tasklet_schedule(&fips_handle_ptr->tasklet);
}
