
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int in_use; int queue_id; struct sec_dev_info* dev_info; } ;
struct sec_dev_info {int dev_lock; int queues_in_use; int dev; } ;


 int ENODEV ;
 int SEC_Q_NUM ;
 int dev_err (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int sec_queue_free(struct sec_queue *queue)
{
 struct sec_dev_info *info = queue->dev_info;

 if (queue->queue_id >= SEC_Q_NUM) {
  dev_err(info->dev, "No queue %d\n", queue->queue_id);
  return -ENODEV;
 }

 if (!queue->in_use) {
  dev_err(info->dev, "Queue %d is idle\n", queue->queue_id);
  return -ENODEV;
 }

 mutex_lock(&info->dev_lock);
 queue->in_use = 0;
 info->queues_in_use--;
 mutex_unlock(&info->dev_lock);

 return 0;
}
