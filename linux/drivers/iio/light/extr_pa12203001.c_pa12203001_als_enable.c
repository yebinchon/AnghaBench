
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pa12203001_data {int als_enabled; int map; } ;


 int PA12203001_ALS_EN_MASK ;
 int PA12203001_REG_CFG0 ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static inline int pa12203001_als_enable(struct pa12203001_data *data, u8 enable)
{
 int ret;

 ret = regmap_update_bits(data->map, PA12203001_REG_CFG0,
     PA12203001_ALS_EN_MASK, enable);
 if (ret < 0)
  return ret;

 data->als_enabled = !!enable;

 return 0;
}
