
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pca9532_led {int id; struct i2c_client* client; } ;
struct pca9532_data {int update_lock; TYPE_1__* chip_info; } ;
struct i2c_client {int dummy; } ;
typedef enum pca9532_state { ____Placeholder_pca9532_state } pca9532_state ;
struct TYPE_2__ {int num_leds; } ;


 int LED_NUM (int ) ;
 int LED_REG (int ,int ) ;
 struct pca9532_data* i2c_get_clientdata (struct i2c_client*) ;
 char i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum pca9532_state pca9532_getled(struct pca9532_led *led)
{
 struct i2c_client *client = led->client;
 struct pca9532_data *data = i2c_get_clientdata(client);
 u8 maxleds = data->chip_info->num_leds;
 char reg;
 enum pca9532_state ret;

 mutex_lock(&data->update_lock);
 reg = i2c_smbus_read_byte_data(client, LED_REG(maxleds, led->id));
 ret = reg >> LED_NUM(led->id)/2;
 mutex_unlock(&data->update_lock);
 return ret;
}
