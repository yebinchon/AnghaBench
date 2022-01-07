
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aem_data {int lock; scalar_t__ valid; scalar_t__ last_updated; } ;


 scalar_t__ REFRESH_INTERVAL ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_before (int ,scalar_t__) ;
 int update_aem_energy (struct aem_data*) ;

__attribute__((used)) static void update_aem1_sensors(struct aem_data *data)
{
 mutex_lock(&data->lock);
 if (time_before(jiffies, data->last_updated + REFRESH_INTERVAL) &&
     data->valid)
  goto out;

 update_aem_energy(data);
out:
 mutex_unlock(&data->lock);
}
