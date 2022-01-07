
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bma180_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int BMA180_CTRL_REG0 ;
 int BMA180_DIS_WAKE_UP ;
 int BMA180_OFFSET_LSB1 ;
 int BMA180_SMP_SKIP ;
 int bma180_chip_init (struct bma180_data*) ;
 int bma180_set_bits (struct bma180_data*,int ,int ,int) ;
 int bma180_set_bw (struct bma180_data*,int) ;
 int bma180_set_ee_writing_state (struct bma180_data*,int) ;
 int bma180_set_scale (struct bma180_data*,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int bma180_chip_config(struct bma180_data *data)
{
 int ret = bma180_chip_init(data);

 if (ret)
  goto err;
 ret = bma180_set_bits(data, BMA180_CTRL_REG0, BMA180_DIS_WAKE_UP, 1);
 if (ret)
  goto err;
 ret = bma180_set_ee_writing_state(data, 1);
 if (ret)
  goto err;
 ret = bma180_set_bits(data, BMA180_OFFSET_LSB1, BMA180_SMP_SKIP, 1);
 if (ret)
  goto err;
 ret = bma180_set_bw(data, 20);
 if (ret)
  goto err;
 ret = bma180_set_scale(data, 2452);
 if (ret)
  goto err;

 return 0;

err:
 dev_err(&data->client->dev, "failed to config the chip\n");
 return ret;
}
