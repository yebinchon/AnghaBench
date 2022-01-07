
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int notifier_call; } ;
struct gb_svc_watchdog {int enabled; TYPE_1__ pm_notifier; int work; struct gb_svc* svc; } ;
struct gb_svc {struct gb_svc_watchdog* watchdog; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int dev_err (int *,char*,int) ;
 int do_work ;
 int gb_svc_watchdog_enable (struct gb_svc*) ;
 int kfree (struct gb_svc_watchdog*) ;
 struct gb_svc_watchdog* kmalloc (int,int ) ;
 int register_pm_notifier (TYPE_1__*) ;
 int svc_watchdog_pm_notifier ;
 int unregister_pm_notifier (TYPE_1__*) ;

int gb_svc_watchdog_create(struct gb_svc *svc)
{
 struct gb_svc_watchdog *watchdog;
 int retval;

 if (svc->watchdog)
  return 0;

 watchdog = kmalloc(sizeof(*watchdog), GFP_KERNEL);
 if (!watchdog)
  return -ENOMEM;

 watchdog->enabled = 0;
 watchdog->svc = svc;
 INIT_DELAYED_WORK(&watchdog->work, do_work);
 svc->watchdog = watchdog;

 watchdog->pm_notifier.notifier_call = svc_watchdog_pm_notifier;
 retval = register_pm_notifier(&watchdog->pm_notifier);
 if (retval) {
  dev_err(&svc->dev, "error registering pm notifier(%d)\n",
   retval);
  goto svc_watchdog_create_err;
 }

 retval = gb_svc_watchdog_enable(svc);
 if (retval) {
  dev_err(&svc->dev, "error enabling watchdog (%d)\n", retval);
  unregister_pm_notifier(&watchdog->pm_notifier);
  goto svc_watchdog_create_err;
 }
 return retval;

svc_watchdog_create_err:
 svc->watchdog = ((void*)0);
 kfree(watchdog);

 return retval;
}
