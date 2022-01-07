
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vcnl4035_data {int regmap; } ;


 int VCNL4035_ALS_CONF ;
 int VCNL4035_MODE_ALS_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int vcnl4035_set_als_power_state(struct vcnl4035_data *data, u8 status)
{
 return regmap_update_bits(data->regmap, VCNL4035_ALS_CONF,
     VCNL4035_MODE_ALS_MASK,
     status);
}
