
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int LM93_REG_CONFIG ;
 int LM93_REG_GPI_VID_CTL ;
 int LM93_REG_MISC_ERR_MASK ;
 int LM93_REG_SLEEP_CONTROL ;
 int LM93_REG_STATUS_CONTROL ;
 int dev_warn (int *,char*) ;
 scalar_t__ init ;
 int lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int msleep (int) ;
 scalar_t__* vccp_limit_type ;
 scalar_t__ vid_agtl ;

__attribute__((used)) static void lm93_init_client(struct i2c_client *client)
{
 int i;
 u8 reg;


 reg = lm93_read_byte(client, LM93_REG_GPI_VID_CTL);
 lm93_write_byte(client, LM93_REG_GPI_VID_CTL,
   reg | (vid_agtl ? 0x03 : 0x00));

 if (init) {

  reg = lm93_read_byte(client, LM93_REG_CONFIG);
  lm93_write_byte(client, LM93_REG_CONFIG, reg | 0x08);


  reg = lm93_read_byte(client, LM93_REG_STATUS_CONTROL);
  lm93_write_byte(client, LM93_REG_STATUS_CONTROL, reg | 0x02);


  lm93_write_byte(client, LM93_REG_SLEEP_CONTROL, 0);


  reg = lm93_read_byte(client, LM93_REG_MISC_ERR_MASK);
  reg &= ~0x03;
  reg &= ~(vccp_limit_type[0] ? 0x10 : 0);
  reg &= ~(vccp_limit_type[1] ? 0x20 : 0);
  lm93_write_byte(client, LM93_REG_MISC_ERR_MASK, reg);
 }


 reg = lm93_read_byte(client, LM93_REG_CONFIG);
 lm93_write_byte(client, LM93_REG_CONFIG, reg | 0x01);


 for (i = 0; i < 20; i++) {
  msleep(10);
  if ((lm93_read_byte(client, LM93_REG_CONFIG) & 0x80) == 0x80)
   return;
 }

 dev_warn(&client->dev,
   "timed out waiting for sensor chip to signal ready!\n");
}
