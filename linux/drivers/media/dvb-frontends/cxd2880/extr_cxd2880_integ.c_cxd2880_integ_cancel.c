
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd {int cancel; } ;


 int EINVAL ;
 int atomic_set (int *,int) ;

int cxd2880_integ_cancel(struct cxd2880_tnrdmd *tnr_dmd)
{
 if (!tnr_dmd)
  return -EINVAL;

 atomic_set(&tnr_dmd->cancel, 1);

 return 0;
}
