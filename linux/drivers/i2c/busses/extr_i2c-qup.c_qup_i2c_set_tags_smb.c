
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qup_i2c_dev {scalar_t__ is_smbus_read; } ;
struct i2c_msg {int flags; } ;


 int I2C_M_TEN ;
 int QUP_TAG_V2_DATARD ;
 int QUP_TAG_V2_DATARD_STOP ;
 int QUP_TAG_V2_START ;
 int qup_i2c_get_data_len (struct qup_i2c_dev*) ;

__attribute__((used)) static int qup_i2c_set_tags_smb(u16 addr, u8 *tags, struct qup_i2c_dev *qup,
   struct i2c_msg *msg)
{
 int len = 0;

 if (qup->is_smbus_read) {
  tags[len++] = QUP_TAG_V2_DATARD_STOP;
  tags[len++] = qup_i2c_get_data_len(qup);
 } else {
  tags[len++] = QUP_TAG_V2_START;
  tags[len++] = addr & 0xff;

  if (msg->flags & I2C_M_TEN)
   tags[len++] = addr >> 8;

  tags[len++] = QUP_TAG_V2_DATARD;

  tags[len++] = 1;
 }
 return len;
}
