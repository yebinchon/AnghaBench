
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dev_info {int sec_id; } ;


 int ENOMEM ;
 int SEC_MAX_DEVICES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sec_dev_info** sec_devices ;
 int sec_id_lock ;

__attribute__((used)) static int sec_id_alloc(struct sec_dev_info *info)
{
 int ret = 0;
 int i;

 mutex_lock(&sec_id_lock);

 for (i = 0; i < SEC_MAX_DEVICES; i++)
  if (!sec_devices[i])
   break;
 if (i == SEC_MAX_DEVICES) {
  ret = -ENOMEM;
  goto unlock;
 }
 info->sec_id = i;
 sec_devices[info->sec_id] = info;

unlock:
 mutex_unlock(&sec_id_lock);

 return ret;
}
