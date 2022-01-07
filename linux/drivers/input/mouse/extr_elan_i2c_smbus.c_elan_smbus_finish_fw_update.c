
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct completion {int dummy; } ;



__attribute__((used)) static int elan_smbus_finish_fw_update(struct i2c_client *client,
           struct completion *fw_completion)
{

 return 0;
}
