
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; void* last_measurement; void* sampling_rate; int reg; } ;
struct TYPE_5__ {int lock; void* last_measurement; void* sampling_rate; int reg; } ;
struct vcnl4000_data {int rev; int al_scale; TYPE_2__ vcnl4200_ps; TYPE_1__ vcnl4200_al; TYPE_3__* client; } ;
struct TYPE_7__ {int dev; } ;


 int ENODEV ;
 int VCNL4040_DEV_ID ;

 int VCNL4200_AL_CONF ;
 int VCNL4200_AL_DATA ;
 int VCNL4200_DEV_ID ;

 int VCNL4200_PS_CONF1 ;
 int VCNL4200_PS_DATA ;
 int dev_dbg (int *,char*,int) ;
 int i2c_smbus_read_word_data (TYPE_3__*,int ) ;
 int i2c_smbus_write_word_data (TYPE_3__*,int ,int ) ;
 void* ktime_set (int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int vcnl4200_init(struct vcnl4000_data *data)
{
 int ret, id;

 ret = i2c_smbus_read_word_data(data->client, VCNL4200_DEV_ID);
 if (ret < 0)
  return ret;

 id = ret & 0xff;

 if (id != 128) {
  ret = i2c_smbus_read_word_data(data->client, VCNL4040_DEV_ID);
  if (ret < 0)
   return ret;

  id = ret & 0xff;

  if (id != 129)
   return -ENODEV;
 }

 dev_dbg(&data->client->dev, "device id 0x%x", id);

 data->rev = (ret >> 8) & 0xf;


 ret = i2c_smbus_write_word_data(data->client, VCNL4200_AL_CONF, 0);
 if (ret < 0)
  return ret;
 ret = i2c_smbus_write_word_data(data->client, VCNL4200_PS_CONF1, 0);
 if (ret < 0)
  return ret;

 data->al_scale = 24000;
 data->vcnl4200_al.reg = VCNL4200_AL_DATA;
 data->vcnl4200_ps.reg = VCNL4200_PS_DATA;
 switch (id) {
 case 128:


  data->vcnl4200_al.sampling_rate = ktime_set(0, 54000 * 1000);
  data->vcnl4200_ps.sampling_rate = ktime_set(0, 4200 * 1000);
  break;
 case 129:

  data->vcnl4200_al.sampling_rate = ktime_set(0, 100000 * 1000);
  data->vcnl4200_ps.sampling_rate = ktime_set(0, 100000 * 1000);
  break;
 }
 data->vcnl4200_al.last_measurement = ktime_set(0, 0);
 data->vcnl4200_ps.last_measurement = ktime_set(0, 0);
 mutex_init(&data->vcnl4200_al.lock);
 mutex_init(&data->vcnl4200_ps.lock);

 return 0;
}
