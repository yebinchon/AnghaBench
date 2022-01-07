
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmfts_data {int running; TYPE_1__* client; scalar_t__ use_key; int mutex; scalar_t__ hover_enabled; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int STMFTS_MS_KEY_SENSE_ON ;
 int STMFTS_MS_MT_SENSE_ON ;
 int STMFTS_SS_HOVER_SENSE_ON ;
 int dev_warn (int *,char*) ;
 int i2c_smbus_write_byte (TYPE_1__*,int ) ;
 struct stmfts_data* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int stmfts_input_open(struct input_dev *dev)
{
 struct stmfts_data *sdata = input_get_drvdata(dev);
 int err;

 err = pm_runtime_get_sync(&sdata->client->dev);
 if (err < 0)
  return err;

 err = i2c_smbus_write_byte(sdata->client, STMFTS_MS_MT_SENSE_ON);
 if (err)
  return err;

 mutex_lock(&sdata->mutex);
 sdata->running = 1;

 if (sdata->hover_enabled) {
  err = i2c_smbus_write_byte(sdata->client,
        STMFTS_SS_HOVER_SENSE_ON);
  if (err)
   dev_warn(&sdata->client->dev,
     "failed to enable hover\n");
 }
 mutex_unlock(&sdata->mutex);

 if (sdata->use_key) {
  err = i2c_smbus_write_byte(sdata->client,
        STMFTS_MS_KEY_SENSE_ON);
  if (err)

   dev_warn(&sdata->client->dev,
     "failed to enable touchkey\n");
 }

 return 0;
}
