
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct capidev* private_data; } ;
struct capidev {int list; int nccis; int recvwait; int recvqueue; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int capidev_list ;
 int capidev_list_lock ;
 int init_waitqueue_head (int *) ;
 struct capidev* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_queue_head_init (int *) ;
 int stream_open (struct inode*,struct file*) ;

__attribute__((used)) static int capi_open(struct inode *inode, struct file *file)
{
 struct capidev *cdev;

 cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
 if (!cdev)
  return -ENOMEM;

 mutex_init(&cdev->lock);
 skb_queue_head_init(&cdev->recvqueue);
 init_waitqueue_head(&cdev->recvwait);
 INIT_LIST_HEAD(&cdev->nccis);
 file->private_data = cdev;

 mutex_lock(&capidev_list_lock);
 list_add_tail(&cdev->list, &capidev_list);
 mutex_unlock(&capidev_list_lock);

 return stream_open(inode, file);
}
