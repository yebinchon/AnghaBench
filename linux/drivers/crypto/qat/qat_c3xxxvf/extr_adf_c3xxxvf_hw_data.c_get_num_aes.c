
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adf_hw_device_data {int dummy; } ;


 int ADF_C3XXXIOV_MAX_ACCELENGINES ;

__attribute__((used)) static u32 get_num_aes(struct adf_hw_device_data *self)
{
 return ADF_C3XXXIOV_MAX_ACCELENGINES;
}
