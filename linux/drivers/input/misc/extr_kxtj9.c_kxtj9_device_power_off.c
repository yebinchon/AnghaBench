
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* power_off ) () ;} ;
struct kxtj9_data {TYPE_1__ pdata; TYPE_2__* client; int ctrl_reg1; } ;
struct TYPE_4__ {int dev; } ;


 int CTRL_REG1 ;
 int PC1_OFF ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_2__*,int ,int ) ;
 int stub1 () ;

__attribute__((used)) static void kxtj9_device_power_off(struct kxtj9_data *tj9)
{
 int err;

 tj9->ctrl_reg1 &= PC1_OFF;
 err = i2c_smbus_write_byte_data(tj9->client, CTRL_REG1, tj9->ctrl_reg1);
 if (err < 0)
  dev_err(&tj9->client->dev, "soft power off failed\n");

 if (tj9->pdata.power_off)
  tj9->pdata.power_off();
}
