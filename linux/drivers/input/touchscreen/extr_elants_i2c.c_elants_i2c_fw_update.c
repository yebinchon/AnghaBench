
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; int dev; } ;
struct firmware {int size; } ;
struct elants_data {scalar_t__ iap_mode; int state; int hw_version; struct i2c_client* client; } ;


 int EINVAL ;
 int ELAN_FW_PAGESIZE ;
 scalar_t__ ELAN_IAP_OPERATIONAL ;
 scalar_t__ ELAN_IAP_RECOVERY ;
 int ELAN_STATE_NORMAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,char*) ;
 int disable_irq (int ) ;
 int elants_i2c_calibrate (struct elants_data*) ;
 int elants_i2c_do_update_firmware (struct i2c_client*,struct firmware const*,int) ;
 int elants_i2c_initialize (struct elants_data*) ;
 int enable_irq (int ) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 int msleep (int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int elants_i2c_fw_update(struct elants_data *ts)
{
 struct i2c_client *client = ts->client;
 const struct firmware *fw;
 char *fw_name;
 int error;

 fw_name = kasprintf(GFP_KERNEL, "elants_i2c_%04x.bin", ts->hw_version);
 if (!fw_name)
  return -ENOMEM;

 dev_info(&client->dev, "requesting fw name = %s\n", fw_name);
 error = request_firmware(&fw, fw_name, &client->dev);
 kfree(fw_name);
 if (error) {
  dev_err(&client->dev, "failed to request firmware: %d\n",
   error);
  return error;
 }

 if (fw->size % ELAN_FW_PAGESIZE) {
  dev_err(&client->dev, "invalid firmware length: %zu\n",
   fw->size);
  error = -EINVAL;
  goto out;
 }

 disable_irq(client->irq);

 error = elants_i2c_do_update_firmware(client, fw,
     ts->iap_mode == ELAN_IAP_RECOVERY);
 if (error) {
  dev_err(&client->dev, "firmware update failed: %d\n", error);
  ts->iap_mode = ELAN_IAP_RECOVERY;
  goto out_enable_irq;
 }

 error = elants_i2c_initialize(ts);
 if (error) {
  dev_err(&client->dev,
   "failed to initialize device after firmware update: %d\n",
   error);
  ts->iap_mode = ELAN_IAP_RECOVERY;
  goto out_enable_irq;
 }

 ts->iap_mode = ELAN_IAP_OPERATIONAL;

out_enable_irq:
 ts->state = ELAN_STATE_NORMAL;
 enable_irq(client->irq);
 msleep(100);

 if (!error)
  elants_i2c_calibrate(ts);
out:
 release_firmware(fw);
 return error;
}
