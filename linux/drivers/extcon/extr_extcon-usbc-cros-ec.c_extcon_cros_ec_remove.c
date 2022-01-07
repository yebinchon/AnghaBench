
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct cros_ec_extcon_info {int notifier; TYPE_1__* ec; } ;
struct TYPE_2__ {int event_notifier; } ;


 int blocking_notifier_chain_unregister (int *,int *) ;
 struct cros_ec_extcon_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int extcon_cros_ec_remove(struct platform_device *pdev)
{
 struct cros_ec_extcon_info *info = platform_get_drvdata(pdev);

 blocking_notifier_chain_unregister(&info->ec->event_notifier,
        &info->notifier);

 return 0;
}
