
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcnl4000_data {int rev; int al_scale; int vcnl4000_lock; TYPE_1__* client; int id; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int VCNL4000 ;

 int VCNL4000_PROD_REV ;
 int VCNL4010 ;

 int dev_warn (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int vcnl4000_init(struct vcnl4000_data *data)
{
 int ret, prod_id;

 ret = i2c_smbus_read_byte_data(data->client, VCNL4000_PROD_REV);
 if (ret < 0)
  return ret;

 prod_id = ret >> 4;
 switch (prod_id) {
 case 129:
  if (data->id != VCNL4000)
   dev_warn(&data->client->dev,
     "wrong device id, use vcnl4000");
  break;
 case 128:
  if (data->id != VCNL4010)
   dev_warn(&data->client->dev,
     "wrong device id, use vcnl4010/4020");
  break;
 default:
  return -ENODEV;
 }

 data->rev = ret & 0xf;
 data->al_scale = 250000;
 mutex_init(&data->vcnl4000_lock);

 return 0;
}
