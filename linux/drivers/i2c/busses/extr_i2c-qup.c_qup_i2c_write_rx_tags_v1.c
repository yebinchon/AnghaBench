
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_dev {scalar_t__ base; struct i2c_msg* msg; } ;
struct i2c_msg {scalar_t__ len; } ;


 int QUP_MSW_SHIFT ;
 scalar_t__ QUP_OUT_FIFO_BASE ;
 scalar_t__ QUP_READ_LIMIT ;
 int QUP_TAG_REC ;
 int QUP_TAG_START ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void qup_i2c_write_rx_tags_v1(struct qup_i2c_dev *qup)
{
 struct i2c_msg *msg = qup->msg;
 u32 addr, len, val;

 addr = i2c_8bit_addr_from_msg(msg);


 len = (msg->len == QUP_READ_LIMIT) ? 0 : msg->len;

 val = ((QUP_TAG_REC | len) << QUP_MSW_SHIFT) | QUP_TAG_START | addr;
 writel(val, qup->base + QUP_OUT_FIFO_BASE);
}
