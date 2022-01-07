
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aem_data {scalar_t__* energy; int lock; } ;
typedef int ssize_t ;


 struct aem_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int update_aem_energy_one (struct aem_data*,size_t) ;

__attribute__((used)) static ssize_t aem_show_energy(struct device *dev,
          struct device_attribute *devattr,
          char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct aem_data *a = dev_get_drvdata(dev);
 mutex_lock(&a->lock);
 update_aem_energy_one(a, attr->index);
 mutex_unlock(&a->lock);

 return sprintf(buf, "%llu\n",
   (unsigned long long)a->energy[attr->index] * 1000);
}
