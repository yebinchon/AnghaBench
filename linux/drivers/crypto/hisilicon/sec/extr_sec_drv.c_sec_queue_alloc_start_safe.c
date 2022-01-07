
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int dummy; } ;
struct sec_dev_info {int dummy; } ;


 int ENODEV ;
 struct sec_queue* ERR_PTR (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sec_dev_info* sec_device_get () ;
 int sec_id_lock ;
 struct sec_queue* sec_queue_alloc_start (struct sec_dev_info*) ;

struct sec_queue *sec_queue_alloc_start_safe(void)
{
 struct sec_dev_info *info;
 struct sec_queue *queue = ERR_PTR(-ENODEV);

 mutex_lock(&sec_id_lock);
 info = sec_device_get();
 if (!info)
  goto unlock;

 queue = sec_queue_alloc_start(info);

unlock:
 mutex_unlock(&sec_id_lock);

 return queue;
}
