
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int pos; int count; } ;
struct qup_i2c_dev {TYPE_1__ blk; scalar_t__ is_last; } ;
struct i2c_msg {int flags; } ;


 int I2C_M_RD ;
 int I2C_M_TEN ;
 int QUP_READ_LIMIT ;
 int QUP_TAG_V2_DATARD ;
 int QUP_TAG_V2_DATARD_NACK ;
 int QUP_TAG_V2_DATARD_STOP ;
 int QUP_TAG_V2_DATAWR ;
 int QUP_TAG_V2_DATAWR_STOP ;
 int QUP_TAG_V2_START ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 scalar_t__ qup_i2c_check_msg_len (struct i2c_msg*) ;
 int qup_i2c_get_data_len (struct qup_i2c_dev*) ;
 int qup_i2c_set_tags_smb (int,int*,struct qup_i2c_dev*,struct i2c_msg*) ;

__attribute__((used)) static int qup_i2c_set_tags(u8 *tags, struct qup_i2c_dev *qup,
       struct i2c_msg *msg)
{
 u16 addr = i2c_8bit_addr_from_msg(msg);
 int len = 0;
 int data_len;

 int last = (qup->blk.pos == (qup->blk.count - 1)) && (qup->is_last);


 if (qup_i2c_check_msg_len(msg))
  return qup_i2c_set_tags_smb(addr, tags, qup, msg);

 if (qup->blk.pos == 0) {
  tags[len++] = QUP_TAG_V2_START;
  tags[len++] = addr & 0xff;

  if (msg->flags & I2C_M_TEN)
   tags[len++] = addr >> 8;
 }


 if (last) {
  if (msg->flags & I2C_M_RD)
   tags[len++] = QUP_TAG_V2_DATARD_STOP;
  else
   tags[len++] = QUP_TAG_V2_DATAWR_STOP;
 } else {
  if (msg->flags & I2C_M_RD)
   tags[len++] = qup->blk.pos == (qup->blk.count - 1) ?
          QUP_TAG_V2_DATARD_NACK :
          QUP_TAG_V2_DATARD;
  else
   tags[len++] = QUP_TAG_V2_DATAWR;
 }

 data_len = qup_i2c_get_data_len(qup);


 if (data_len == QUP_READ_LIMIT)
  tags[len++] = 0;
 else
  tags[len++] = data_len;

 return len;
}
