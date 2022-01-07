
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct adf_etr_data {int * banks; } ;
struct adf_accel_dev {struct adf_etr_data* transport; } ;


 size_t GET_MAX_BANKS (struct adf_accel_dev*) ;
 int cleanup_bank (int *) ;

__attribute__((used)) static void adf_cleanup_etr_handles(struct adf_accel_dev *accel_dev)
{
 struct adf_etr_data *etr_data = accel_dev->transport;
 uint32_t i, num_banks = GET_MAX_BANKS(accel_dev);

 for (i = 0; i < num_banks; i++)
  cleanup_bank(&etr_data->banks[i]);
}
