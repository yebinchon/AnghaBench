
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd {int cancel; } ;


 int ECANCELED ;
 int EINVAL ;
 scalar_t__ atomic_read (int *) ;

int cxd2880_integ_check_cancellation(struct cxd2880_tnrdmd *tnr_dmd)
{
 if (!tnr_dmd)
  return -EINVAL;

 if (atomic_read(&tnr_dmd->cancel) != 0)
  return -ECANCELED;

 return 0;
}
