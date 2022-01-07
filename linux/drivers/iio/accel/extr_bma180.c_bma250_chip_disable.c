
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bma180_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ bma180_set_new_data_intr_state (struct bma180_data*,int) ;
 scalar_t__ bma180_set_sleep_state (struct bma180_data*,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static void bma250_chip_disable(struct bma180_data *data)
{
 if (bma180_set_new_data_intr_state(data, 0))
  goto err;
 if (bma180_set_sleep_state(data, 1))
  goto err;

 return;

err:
 dev_err(&data->client->dev, "failed to disable the chip\n");
}
