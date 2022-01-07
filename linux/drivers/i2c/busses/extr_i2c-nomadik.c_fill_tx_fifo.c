
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; int xfer_bytes; int * buffer; } ;
struct nmk_i2c_dev {TYPE_1__ cli; scalar_t__ virtbase; } ;


 scalar_t__ I2C_TFR ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void fill_tx_fifo(struct nmk_i2c_dev *dev, int no_bytes)
{
 int count;

 for (count = (no_bytes - 2);
   (count > 0) &&
   (dev->cli.count != 0);
   count--) {

  writeb(*dev->cli.buffer,
   dev->virtbase + I2C_TFR);
  dev->cli.buffer++;
  dev->cli.count--;
  dev->cli.xfer_bytes++;
 }

}
