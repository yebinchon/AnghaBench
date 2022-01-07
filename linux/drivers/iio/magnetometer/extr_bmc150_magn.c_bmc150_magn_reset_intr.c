
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmc150_magn_data {int regmap; } ;


 int BMC150_MAGN_REG_X_L ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int bmc150_magn_reset_intr(struct bmc150_magn_data *data)
{
 int tmp;





 return regmap_read(data->regmap, BMC150_MAGN_REG_X_L, &tmp);
}
