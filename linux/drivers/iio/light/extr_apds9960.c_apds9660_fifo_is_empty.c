
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds9960_data {int regmap; } ;


 int APDS9960_REG_GFLVL ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static inline int apds9660_fifo_is_empty(struct apds9960_data *data)
{
 int cnt;
 int ret;

 ret = regmap_read(data->regmap, APDS9960_REG_GFLVL, &cnt);
 if (ret)
  return ret;

 return cnt;
}
