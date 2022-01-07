
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kxtj9_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int WHO_AM_I ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int kxtj9_device_power_off (struct kxtj9_data*) ;
 int kxtj9_device_power_on (struct kxtj9_data*) ;

__attribute__((used)) static int kxtj9_verify(struct kxtj9_data *tj9)
{
 int retval;

 retval = kxtj9_device_power_on(tj9);
 if (retval < 0)
  return retval;

 retval = i2c_smbus_read_byte_data(tj9->client, WHO_AM_I);
 if (retval < 0) {
  dev_err(&tj9->client->dev, "read err int source\n");
  goto out;
 }

 retval = (retval != 0x07 && retval != 0x08) ? -EIO : 0;

out:
 kxtj9_device_power_off(tj9);
 return retval;
}
