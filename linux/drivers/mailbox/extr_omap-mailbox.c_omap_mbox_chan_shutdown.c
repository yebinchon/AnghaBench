
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_device {int cfg_lock; int dev; } ;
struct omap_mbox {struct omap_mbox_device* parent; } ;
struct mbox_chan {int dummy; } ;


 struct omap_mbox* mbox_chan_to_omap_mbox (struct mbox_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_mbox_fini (struct omap_mbox*) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void omap_mbox_chan_shutdown(struct mbox_chan *chan)
{
 struct omap_mbox *mbox = mbox_chan_to_omap_mbox(chan);
 struct omap_mbox_device *mdev = mbox->parent;

 mutex_lock(&mdev->cfg_lock);
 omap_mbox_fini(mbox);
 pm_runtime_put_sync(mdev->dev);
 mutex_unlock(&mdev->cfg_lock);
}
