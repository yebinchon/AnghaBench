
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct apds9300_data {int intr_en; TYPE_1__* client; int power_state; } ;
struct TYPE_2__ {int dev; } ;


 int APDS9300_CMD ;
 int APDS9300_INTERRUPT ;
 int APDS9300_INTR_ENABLE ;
 int APDS9300_THRESH_INTR ;
 int EBUSY ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int,int) ;

__attribute__((used)) static int apds9300_set_intr_state(struct apds9300_data *data, int state)
{
 int ret;
 u8 cmd;

 if (!data->power_state)
  return -EBUSY;

 cmd = state ? APDS9300_INTR_ENABLE | APDS9300_THRESH_INTR : 0x00;
 ret = i2c_smbus_write_byte_data(data->client,
   APDS9300_INTERRUPT | APDS9300_CMD, cmd);
 if (ret) {
  dev_err(&data->client->dev,
   "failed to set interrupt state %d\n", state);
  return ret;
 }
 data->intr_en = state;

 return 0;
}
