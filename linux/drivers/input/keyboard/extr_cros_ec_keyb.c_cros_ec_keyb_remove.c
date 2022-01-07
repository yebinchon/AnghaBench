
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct cros_ec_keyb {int notifier; TYPE_1__* ec; } ;
struct TYPE_2__ {int event_notifier; } ;


 int blocking_notifier_chain_unregister (int *,int *) ;
 struct cros_ec_keyb* dev_get_drvdata (int *) ;

__attribute__((used)) static int cros_ec_keyb_remove(struct platform_device *pdev)
{
 struct cros_ec_keyb *ckdev = dev_get_drvdata(&pdev->dev);

 blocking_notifier_chain_unregister(&ckdev->ec->event_notifier,
        &ckdev->notifier);

 return 0;
}
