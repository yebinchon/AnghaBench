
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxreg_led_priv_data {int access_lock; struct mlxreg_core_platform_data* pdata; } ;
struct mlxreg_led_data {struct mlxreg_core_data* data; struct mlxreg_led_priv_data* data_parent; } ;
struct mlxreg_core_platform_data {int regmap; } ;
struct mlxreg_core_data {int mask; int reg; scalar_t__ bit; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int rol32 (int ,scalar_t__) ;
 int ror32 (int,scalar_t__) ;

__attribute__((used)) static int
mlxreg_led_store_hw(struct mlxreg_led_data *led_data, u8 vset)
{
 struct mlxreg_led_priv_data *priv = led_data->data_parent;
 struct mlxreg_core_platform_data *led_pdata = priv->pdata;
 struct mlxreg_core_data *data = led_data->data;
 u32 regval;
 u32 nib;
 int ret;
 mutex_lock(&priv->access_lock);

 ret = regmap_read(led_pdata->regmap, data->reg, &regval);
 if (ret)
  goto access_error;

 nib = (ror32(data->mask, data->bit) == 0xf0) ? rol32(vset, data->bit) :
       rol32(vset, data->bit + 4);
 regval = (regval & data->mask) | nib;

 ret = regmap_write(led_pdata->regmap, data->reg, regval);

access_error:
 mutex_unlock(&priv->access_lock);

 return ret;
}
