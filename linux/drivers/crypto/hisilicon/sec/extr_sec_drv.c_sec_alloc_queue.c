
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int in_use; } ;
struct sec_dev_info {int dev_lock; struct sec_queue* queues; int queues_in_use; } ;


 int ENODEV ;
 struct sec_queue* ERR_PTR (int ) ;
 int SEC_Q_NUM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct sec_queue *sec_alloc_queue(struct sec_dev_info *info)
{
 int i;

 mutex_lock(&info->dev_lock);


 for (i = 0; i < SEC_Q_NUM; i++)
  if (!info->queues[i].in_use) {
   info->queues[i].in_use = 1;
   info->queues_in_use++;
   mutex_unlock(&info->dev_lock);

   return &info->queues[i];
  }
 mutex_unlock(&info->dev_lock);

 return ERR_PTR(-ENODEV);
}
