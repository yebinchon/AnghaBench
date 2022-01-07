
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {int ip_clock_khz; int bus_clock_khz; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int OCI2C_CMD ;
 int OCI2C_CMD_IACK ;
 int OCI2C_CONTROL ;
 int OCI2C_CTRL_EN ;
 int OCI2C_CTRL_IEN ;
 int OCI2C_PREHIGH ;
 int OCI2C_PRELOW ;
 int abs (int) ;
 int clamp (int,int ,int) ;
 int dev_err (struct device*,char*,int,int) ;
 int oc_getreg (struct ocores_i2c*,int ) ;
 int oc_setreg (struct ocores_i2c*,int ,int) ;

__attribute__((used)) static int ocores_init(struct device *dev, struct ocores_i2c *i2c)
{
 int prescale;
 int diff;
 u8 ctrl = oc_getreg(i2c, OCI2C_CONTROL);


 ctrl &= ~(OCI2C_CTRL_EN | OCI2C_CTRL_IEN);
 oc_setreg(i2c, OCI2C_CONTROL, ctrl);

 prescale = (i2c->ip_clock_khz / (5 * i2c->bus_clock_khz)) - 1;
 prescale = clamp(prescale, 0, 0xffff);

 diff = i2c->ip_clock_khz / (5 * (prescale + 1)) - i2c->bus_clock_khz;
 if (abs(diff) > i2c->bus_clock_khz / 10) {
  dev_err(dev,
   "Unsupported clock settings: core: %d KHz, bus: %d KHz\n",
   i2c->ip_clock_khz, i2c->bus_clock_khz);
  return -EINVAL;
 }

 oc_setreg(i2c, OCI2C_PRELOW, prescale & 0xff);
 oc_setreg(i2c, OCI2C_PREHIGH, prescale >> 8);


 oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_IACK);
 oc_setreg(i2c, OCI2C_CONTROL, ctrl | OCI2C_CTRL_EN);

 return 0;
}
