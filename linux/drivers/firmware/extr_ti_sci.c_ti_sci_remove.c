
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ notifier_call; } ;
struct ti_sci_info {int chan_rx; int chan_tx; int node; scalar_t__ users; TYPE_1__ nb; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int EBUSY ;
 int list_del (int *) ;
 int mbox_free_channel (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_platform_depopulate (struct device*) ;
 struct ti_sci_info* platform_get_drvdata (struct platform_device*) ;
 int ti_sci_debugfs_destroy (struct platform_device*,struct ti_sci_info*) ;
 int ti_sci_list_mutex ;
 int unregister_restart_handler (TYPE_1__*) ;

__attribute__((used)) static int ti_sci_remove(struct platform_device *pdev)
{
 struct ti_sci_info *info;
 struct device *dev = &pdev->dev;
 int ret = 0;

 of_platform_depopulate(dev);

 info = platform_get_drvdata(pdev);

 if (info->nb.notifier_call)
  unregister_restart_handler(&info->nb);

 mutex_lock(&ti_sci_list_mutex);
 if (info->users)
  ret = -EBUSY;
 else
  list_del(&info->node);
 mutex_unlock(&ti_sci_list_mutex);

 if (!ret) {
  ti_sci_debugfs_destroy(pdev, info);


  mbox_free_channel(info->chan_tx);
  mbox_free_channel(info->chan_rx);
 }

 return ret;
}
