
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {int list; int flags; } ;


 int DAXDEV_ALIVE ;
 int clear_bit (int ,int *) ;
 int dax_host_lock ;
 int dax_srcu ;
 int hlist_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_srcu (int *) ;

void kill_dax(struct dax_device *dax_dev)
{
 if (!dax_dev)
  return;

 clear_bit(DAXDEV_ALIVE, &dax_dev->flags);

 synchronize_srcu(&dax_srcu);

 spin_lock(&dax_host_lock);
 hlist_del_init(&dax_dev->list);
 spin_unlock(&dax_host_lock);
}
