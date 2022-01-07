
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bma180_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int BMA180_CTRL_REG0 ;
 int BMA180_EE_W ;
 int bma180_set_bits (struct bma180_data*,int ,int ,int) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int bma180_set_ee_writing_state(struct bma180_data *data, bool state)
{
 int ret = bma180_set_bits(data, BMA180_CTRL_REG0, BMA180_EE_W, state);

 if (ret)
  dev_err(&data->client->dev,
   "failed to set ee writing state %d\n", state);

 return ret;
}
