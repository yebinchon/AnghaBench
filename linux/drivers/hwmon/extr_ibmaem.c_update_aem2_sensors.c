
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aem_data {int lock; int * pcap; int * temp; scalar_t__ valid; scalar_t__ last_updated; } ;


 int AEM_EXHAUST_ELEMENT ;
 int AEM_POWER_CAP_ELEMENT ;
 int POWER_AUX ;
 int POWER_CAP ;
 scalar_t__ REFRESH_INTERVAL ;
 int aem_read_sensor (struct aem_data*,int ,int,int *,int) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_before (int ,scalar_t__) ;
 int update_aem_energy (struct aem_data*) ;

__attribute__((used)) static void update_aem2_sensors(struct aem_data *data)
{
 int i;

 mutex_lock(&data->lock);
 if (time_before(jiffies, data->last_updated + REFRESH_INTERVAL) &&
     data->valid)
  goto out;

 update_aem_energy(data);
 aem_read_sensor(data, AEM_EXHAUST_ELEMENT, 0, &data->temp[0], 1);
 aem_read_sensor(data, AEM_EXHAUST_ELEMENT, 1, &data->temp[1], 1);

 for (i = POWER_CAP; i <= POWER_AUX; i++)
  aem_read_sensor(data, AEM_POWER_CAP_ELEMENT, i,
    &data->pcap[i], 2);
out:
 mutex_unlock(&data->lock);
}
