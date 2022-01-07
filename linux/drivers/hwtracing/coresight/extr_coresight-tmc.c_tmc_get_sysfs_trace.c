
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int config_type; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;



 int tmc_etb_get_sysfs_trace (struct tmc_drvdata*,int ,size_t,char**) ;
 int tmc_etr_get_sysfs_trace (struct tmc_drvdata*,int ,size_t,char**) ;

__attribute__((used)) static inline ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata,
       loff_t pos, size_t len, char **bufpp)
{
 switch (drvdata->config_type) {
 case 130:
 case 129:
  return tmc_etb_get_sysfs_trace(drvdata, pos, len, bufpp);
 case 128:
  return tmc_etr_get_sysfs_trace(drvdata, pos, len, bufpp);
 }

 return -EINVAL;
}
