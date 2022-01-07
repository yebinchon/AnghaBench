
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int irq; int dev; } ;
struct firmware {int dummy; } ;
struct elan_tp_data {int in_fw_update; TYPE_1__* ops; struct i2c_client* client; } ;
struct TYPE_2__ {int (* iap_reset ) (struct i2c_client*) ;} ;


 int __elan_update_firmware (struct elan_tp_data*,struct firmware const*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int disable_irq (int ) ;
 int elan_initialize (struct elan_tp_data*) ;
 int elan_query_device_info (struct elan_tp_data*) ;
 int enable_irq (int ) ;
 int stub1 (struct i2c_client*) ;

__attribute__((used)) static int elan_update_firmware(struct elan_tp_data *data,
    const struct firmware *fw)
{
 struct i2c_client *client = data->client;
 int retval;

 dev_dbg(&client->dev, "Starting firmware update....\n");

 disable_irq(client->irq);
 data->in_fw_update = 1;

 retval = __elan_update_firmware(data, fw);
 if (retval) {
  dev_err(&client->dev, "firmware update failed: %d\n", retval);
  data->ops->iap_reset(client);
 } else {

  elan_initialize(data);
  elan_query_device_info(data);
 }

 data->in_fw_update = 0;
 enable_irq(client->irq);

 return retval;
}
