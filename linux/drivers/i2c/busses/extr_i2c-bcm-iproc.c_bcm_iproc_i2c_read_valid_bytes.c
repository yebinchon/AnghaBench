
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i2c_msg {size_t len; int* buf; } ;
struct bcm_iproc_i2c_dev {size_t rx_bytes; struct i2c_msg* msg; } ;


 int M_RX_DATA_MASK ;
 int M_RX_DATA_SHIFT ;
 int M_RX_OFFSET ;
 int M_RX_STATUS_MASK ;
 int M_RX_STATUS_SHIFT ;
 int iproc_i2c_rd_reg (struct bcm_iproc_i2c_dev*,int ) ;

__attribute__((used)) static void bcm_iproc_i2c_read_valid_bytes(struct bcm_iproc_i2c_dev *iproc_i2c)
{
 struct i2c_msg *msg = iproc_i2c->msg;
 uint32_t val;


 while (iproc_i2c->rx_bytes < msg->len) {
  val = iproc_i2c_rd_reg(iproc_i2c, M_RX_OFFSET);


  if (!((val >> M_RX_STATUS_SHIFT) & M_RX_STATUS_MASK))
   break;

  msg->buf[iproc_i2c->rx_bytes] =
   (val >> M_RX_DATA_SHIFT) & M_RX_DATA_MASK;
  iproc_i2c->rx_bytes++;
 }
}
