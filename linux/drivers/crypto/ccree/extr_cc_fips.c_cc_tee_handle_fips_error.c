
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_drvdata {int dummy; } ;


 int cc_get_tee_fips_status (struct cc_drvdata*) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int tee_fips_error (struct device*) ;

void cc_tee_handle_fips_error(struct cc_drvdata *p_drvdata)
{
 struct device *dev = drvdata_to_dev(p_drvdata);

 if (!cc_get_tee_fips_status(p_drvdata))
  tee_fips_error(dev);
}
