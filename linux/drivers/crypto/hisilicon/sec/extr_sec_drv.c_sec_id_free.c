
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dev_info {size_t sec_id; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ** sec_devices ;
 int sec_id_lock ;

__attribute__((used)) static void sec_id_free(struct sec_dev_info *info)
{
 mutex_lock(&sec_id_lock);
 sec_devices[info->sec_id] = ((void*)0);
 mutex_unlock(&sec_id_lock);
}
