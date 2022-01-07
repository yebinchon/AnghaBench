
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int operation; } ;
struct nmk_i2c_dev {int result; TYPE_1__* adev; scalar_t__ virtbase; TYPE_2__ cli; } ;
struct TYPE_3__ {int dev; } ;


 int ARRAY_SIZE (char**) ;
 int I2C_M_RD ;
 int I2C_READ ;
 scalar_t__ I2C_SR ;
 int I2C_WRITE ;
 char** abort_causes ;
 int dev_err (int *,char*,char*) ;
 int init_hw (struct nmk_i2c_dev*) ;
 int read_i2c (struct nmk_i2c_dev*,int) ;
 int readl (scalar_t__) ;
 int write_i2c (struct nmk_i2c_dev*,int) ;

__attribute__((used)) static int nmk_i2c_xfer_one(struct nmk_i2c_dev *dev, u16 flags)
{
 int status;

 if (flags & I2C_M_RD) {

  dev->cli.operation = I2C_READ;
  status = read_i2c(dev, flags);
 } else {

  dev->cli.operation = I2C_WRITE;
  status = write_i2c(dev, flags);
 }

 if (status || (dev->result)) {
  u32 i2c_sr;
  u32 cause;

  i2c_sr = readl(dev->virtbase + I2C_SR);




  if (((i2c_sr >> 2) & 0x3) == 0x3) {

   cause = (i2c_sr >> 4) & 0x7;
   dev_err(&dev->adev->dev, "%s\n",
    cause >= ARRAY_SIZE(abort_causes) ?
    "unknown reason" :
    abort_causes[cause]);
  }

  (void) init_hw(dev);

  status = status ? status : dev->result;
 }

 return status;
}
