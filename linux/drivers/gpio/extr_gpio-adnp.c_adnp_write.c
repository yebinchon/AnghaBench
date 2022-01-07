
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int parent; } ;
struct adnp {TYPE_1__ gpio; int client; } ;


 int dev_err (int ,char*,char*,int) ;
 int i2c_smbus_write_byte_data (int ,unsigned int,int ) ;

__attribute__((used)) static int adnp_write(struct adnp *adnp, unsigned offset, uint8_t value)
{
 int err;

 err = i2c_smbus_write_byte_data(adnp->client, offset, value);
 if (err < 0) {
  dev_err(adnp->gpio.parent, "%s failed: %d\n",
   "i2c_smbus_write_byte_data()", err);
  return err;
 }

 return 0;
}
