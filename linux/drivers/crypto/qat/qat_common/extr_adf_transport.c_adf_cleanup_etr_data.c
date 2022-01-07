
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_etr_data {struct adf_etr_data* banks; int debug; } ;
struct adf_accel_dev {struct adf_etr_data* transport; } ;


 int adf_cleanup_etr_handles (struct adf_accel_dev*) ;
 int debugfs_remove (int ) ;
 int kfree (struct adf_etr_data*) ;

void adf_cleanup_etr_data(struct adf_accel_dev *accel_dev)
{
 struct adf_etr_data *etr_data = accel_dev->transport;

 if (etr_data) {
  adf_cleanup_etr_handles(accel_dev);
  debugfs_remove(etr_data->debug);
  kfree(etr_data->banks);
  kfree(etr_data);
  accel_dev->transport = ((void*)0);
 }
}
