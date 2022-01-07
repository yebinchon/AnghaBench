
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int notifier_from_errno (int) ;
 int sdei_mask_local_cpu () ;
 int sdei_unmask_local_cpu () ;

__attribute__((used)) static int sdei_pm_notifier(struct notifier_block *nb, unsigned long action,
       void *data)
{
 int rv;

 switch (action) {
 case 130:
  rv = sdei_mask_local_cpu();
  break;
 case 128:
 case 129:
  rv = sdei_unmask_local_cpu();
  break;
 default:
  return NOTIFY_DONE;
 }

 if (rv)
  return notifier_from_errno(rv);

 return NOTIFY_OK;
}
