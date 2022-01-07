
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kxtj9_data {int ctrl_reg1; int client; int data_ctrl; } ;
struct TYPE_3__ {unsigned int cutoff; int mask; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CTRL_REG1 ;
 int DATA_CTRL ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 TYPE_1__* kxtj9_odr_table ;

__attribute__((used)) static int kxtj9_update_odr(struct kxtj9_data *tj9, unsigned int poll_interval)
{
 int err;
 int i;


 for (i = 0; i < ARRAY_SIZE(kxtj9_odr_table); i++) {
  tj9->data_ctrl = kxtj9_odr_table[i].mask;
  if (poll_interval < kxtj9_odr_table[i].cutoff)
   break;
 }

 err = i2c_smbus_write_byte_data(tj9->client, CTRL_REG1, 0);
 if (err < 0)
  return err;

 err = i2c_smbus_write_byte_data(tj9->client, DATA_CTRL, tj9->data_ctrl);
 if (err < 0)
  return err;

 err = i2c_smbus_write_byte_data(tj9->client, CTRL_REG1, tj9->ctrl_reg1);
 if (err < 0)
  return err;

 return 0;
}
