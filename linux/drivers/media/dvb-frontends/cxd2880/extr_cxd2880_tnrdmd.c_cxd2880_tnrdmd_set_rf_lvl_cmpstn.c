
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd {int (* rf_lvl_cmpstn ) (struct cxd2880_tnrdmd*,int*) ;} ;


 int EINVAL ;

int cxd2880_tnrdmd_set_rf_lvl_cmpstn(struct cxd2880_tnrdmd
         *tnr_dmd,
         int (*rf_lvl_cmpstn)
         (struct cxd2880_tnrdmd *,
         int *))
{
 if (!tnr_dmd)
  return -EINVAL;

 tnr_dmd->rf_lvl_cmpstn = rf_lvl_cmpstn;

 return 0;
}
