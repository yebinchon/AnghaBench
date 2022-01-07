
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bma180_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int BMA250_INT1_DATA_MASK ;
 int BMA250_INT_MAP_REG ;
 int bma180_chip_init (struct bma180_data*) ;
 int bma180_set_bits (struct bma180_data*,int ,int ,int) ;
 int bma180_set_bw (struct bma180_data*,int) ;
 int bma180_set_scale (struct bma180_data*,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int bma250_chip_config(struct bma180_data *data)
{
 int ret = bma180_chip_init(data);

 if (ret)
  goto err;
 ret = bma180_set_bw(data, 16);
 if (ret)
  goto err;
 ret = bma180_set_scale(data, 38344);
 if (ret)
  goto err;
 ret = bma180_set_bits(data, BMA250_INT_MAP_REG,
  BMA250_INT1_DATA_MASK, 1);
 if (ret)
  goto err;

 return 0;

err:
 dev_err(&data->client->dev, "failed to config the chip\n");
 return ret;
}
