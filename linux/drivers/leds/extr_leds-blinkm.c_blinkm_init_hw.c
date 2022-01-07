
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int BLM_GO_RGB ;
 int BLM_STOP_SCRIPT ;
 int blinkm_transfer_hw (struct i2c_client*,int ) ;

__attribute__((used)) static void blinkm_init_hw(struct i2c_client *client)
{
 int ret;
 ret = blinkm_transfer_hw(client, BLM_STOP_SCRIPT);
 ret = blinkm_transfer_hw(client, BLM_GO_RGB);
}
