
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct cros_ec_device {int event_notifier; } ;
struct TYPE_4__ {int notifier; } ;


 int blocking_notifier_chain_unregister (int *,int *) ;
 TYPE_2__ cbas_ec ;
 int cbas_ec_reglock ;
 int cbas_ec_set_input (int *) ;
 struct cros_ec_device* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cbas_ec_remove(struct platform_device *pdev)
{
 struct cros_ec_device *ec = dev_get_drvdata(pdev->dev.parent);

 mutex_lock(&cbas_ec_reglock);

 blocking_notifier_chain_unregister(&ec->event_notifier,
        &cbas_ec.notifier);
 cbas_ec_set_input(((void*)0));

 mutex_unlock(&cbas_ec_reglock);
 return 0;
}
