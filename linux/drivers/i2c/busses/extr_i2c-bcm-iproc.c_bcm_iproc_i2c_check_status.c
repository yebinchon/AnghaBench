
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int addr; } ;
struct bcm_iproc_i2c_dev {int device; } ;


 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int M_CMD_OFFSET ;


 int M_CMD_STATUS_MASK ;



 int M_CMD_STATUS_SHIFT ;


 int bcm_iproc_i2c_enable_disable (struct bcm_iproc_i2c_dev*,int) ;
 int bcm_iproc_i2c_init (struct bcm_iproc_i2c_dev*) ;
 int dev_dbg (int ,char*,...) ;
 int iproc_i2c_rd_reg (struct bcm_iproc_i2c_dev*,int ) ;

__attribute__((used)) static int bcm_iproc_i2c_check_status(struct bcm_iproc_i2c_dev *iproc_i2c,
          struct i2c_msg *msg)
{
 u32 val;

 val = iproc_i2c_rd_reg(iproc_i2c, M_CMD_OFFSET);
 val = (val >> M_CMD_STATUS_SHIFT) & M_CMD_STATUS_MASK;

 switch (val) {
 case 129:
  return 0;

 case 133:
  dev_dbg(iproc_i2c->device, "lost bus arbitration\n");
  return -EAGAIN;

 case 132:
  dev_dbg(iproc_i2c->device, "NAK addr:0x%02x\n", msg->addr);
  return -ENXIO;

 case 131:
  dev_dbg(iproc_i2c->device, "NAK data\n");
  return -ENXIO;

 case 128:
  dev_dbg(iproc_i2c->device, "bus timeout\n");
  return -ETIMEDOUT;

 case 134:
  dev_dbg(iproc_i2c->device, "FIFO under-run\n");
  return -ENXIO;

 case 130:
  dev_dbg(iproc_i2c->device, "RX FIFO full\n");
  return -ETIMEDOUT;

 default:
  dev_dbg(iproc_i2c->device, "unknown error code=%d\n", val);


  bcm_iproc_i2c_enable_disable(iproc_i2c, 0);
  bcm_iproc_i2c_init(iproc_i2c);
  bcm_iproc_i2c_enable_disable(iproc_i2c, 1);

  return -EIO;
 }
}
