
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcnl4035_data {int als_it_val; int als_persistence; void* als_thresh_low; TYPE_1__* client; int regmap; void* als_thresh_high; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int VCNL4035_ALS_CONF ;
 int VCNL4035_ALS_IT_DEFAULT ;
 int VCNL4035_ALS_IT_MASK ;
 int VCNL4035_ALS_PERS_DEFAULT ;
 int VCNL4035_ALS_PERS_MASK ;
 int VCNL4035_ALS_THDH ;
 void* VCNL4035_ALS_THDH_DEFAULT ;
 int VCNL4035_ALS_THDL ;
 void* VCNL4035_ALS_THDL_DEFAULT ;
 int VCNL4035_DEV_ID ;
 int VCNL4035_DEV_ID_VAL ;
 int VCNL4035_MODE_ALS_ENABLE ;
 int VCNL4035_MODE_ALS_WHITE_CHAN ;
 int dev_err (int *,char*,...) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,void*) ;
 int vcnl4035_set_als_power_state (struct vcnl4035_data*,int ) ;

__attribute__((used)) static int vcnl4035_init(struct vcnl4035_data *data)
{
 int ret;
 int id;

 ret = regmap_read(data->regmap, VCNL4035_DEV_ID, &id);
 if (ret < 0) {
  dev_err(&data->client->dev, "Failed to read DEV_ID register\n");
  return ret;
 }

 if (id != VCNL4035_DEV_ID_VAL) {
  dev_err(&data->client->dev, "Wrong id, got %x, expected %x\n",
   id, VCNL4035_DEV_ID_VAL);
  return -ENODEV;
 }

 ret = vcnl4035_set_als_power_state(data, VCNL4035_MODE_ALS_ENABLE);
 if (ret < 0)
  return ret;


 ret = regmap_update_bits(data->regmap, VCNL4035_ALS_CONF,
     VCNL4035_MODE_ALS_WHITE_CHAN,
     1);
 if (ret) {
  dev_err(&data->client->dev, "set white channel enable %d\n",
   ret);
  return ret;
 }


 ret = regmap_update_bits(data->regmap, VCNL4035_ALS_CONF,
     VCNL4035_ALS_IT_MASK,
     VCNL4035_ALS_IT_DEFAULT);
 if (ret) {
  dev_err(&data->client->dev, "set default ALS IT returned %d\n",
   ret);
  return ret;
 }
 data->als_it_val = VCNL4035_ALS_IT_DEFAULT;


 ret = regmap_update_bits(data->regmap, VCNL4035_ALS_CONF,
     VCNL4035_ALS_PERS_MASK,
     VCNL4035_ALS_PERS_DEFAULT);
 if (ret) {
  dev_err(&data->client->dev, "set default PERS returned %d\n",
   ret);
  return ret;
 }
 data->als_persistence = VCNL4035_ALS_PERS_DEFAULT;


 ret = regmap_write(data->regmap, VCNL4035_ALS_THDH,
    VCNL4035_ALS_THDH_DEFAULT);
 if (ret) {
  dev_err(&data->client->dev, "set default THDH returned %d\n",
   ret);
  return ret;
 }
 data->als_thresh_high = VCNL4035_ALS_THDH_DEFAULT;


 ret = regmap_write(data->regmap, VCNL4035_ALS_THDL,
    VCNL4035_ALS_THDL_DEFAULT);
 if (ret) {
  dev_err(&data->client->dev, "set default THDL returned %d\n",
   ret);
  return ret;
 }
 data->als_thresh_low = VCNL4035_ALS_THDL_DEFAULT;

 return 0;
}
