
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct capidev* private_data; } ;
struct TYPE_2__ {scalar_t__ applid; } ;
struct capidev {int recvqueue; TYPE_1__ ap; int list; } ;


 int capi20_release (TYPE_1__*) ;
 int capidev_list_lock ;
 int capincci_free (struct capidev*,int) ;
 int kfree (struct capidev*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int capi_release(struct inode *inode, struct file *file)
{
 struct capidev *cdev = file->private_data;

 mutex_lock(&capidev_list_lock);
 list_del(&cdev->list);
 mutex_unlock(&capidev_list_lock);

 if (cdev->ap.applid)
  capi20_release(&cdev->ap);
 skb_queue_purge(&cdev->recvqueue);
 capincci_free(cdev, 0xffffffff);

 kfree(cdev);
 return 0;
}
