
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct pxa_i2c {TYPE_1__ adap; } ;


 int DEF_TIMEOUT ;
 int I2C_RETRY ;
 int ICR_SCLE ;
 int ISR_IBB ;
 int ISR_UB ;
 int _ICR (struct pxa_i2c*) ;
 int _ISR (struct pxa_i2c*) ;
 int dev_err (int *,char*) ;
 int readl (int ) ;
 int show_state (struct pxa_i2c*) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static int i2c_pxa_pio_set_master(struct pxa_i2c *i2c)
{

 long timeout = 2 * DEF_TIMEOUT;




 while (timeout-- && readl(_ISR(i2c)) & (ISR_IBB | ISR_UB)) {
  udelay(1000);
  show_state(i2c);
 }

 if (timeout < 0) {
  show_state(i2c);
  dev_err(&i2c->adap.dev,
   "i2c_pxa: timeout waiting for bus free\n");
  return I2C_RETRY;
 }




 writel(readl(_ICR(i2c)) | ICR_SCLE, _ICR(i2c));

 return 0;
}
