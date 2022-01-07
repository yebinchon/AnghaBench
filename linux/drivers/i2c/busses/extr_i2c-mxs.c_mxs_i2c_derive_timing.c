
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct mxs_i2c_dev {int timing0; int timing1; int timing2; struct device* dev; } ;
struct device {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int DIV_ROUND_UP (int const,int) ;
 int dev_dbg (struct device*,char*,int,int const,int,int,int,int,int,int,int) ;
 int dev_warn (struct device*,char*,int,int,int const,int const) ;

__attribute__((used)) static void mxs_i2c_derive_timing(struct mxs_i2c_dev *i2c, uint32_t speed)
{

 const uint32_t clk = 24000000;
 uint32_t divider;
 uint16_t high_count, low_count, rcv_count, xmit_count;
 uint32_t bus_free, leadin;
 struct device *dev = i2c->dev;

 divider = DIV_ROUND_UP(clk, speed);

 if (divider < 25) {




  divider = 25;
  dev_warn(dev,
   "Speed too high (%u.%03u kHz), using %u.%03u kHz\n",
   speed / 1000, speed % 1000,
   clk / divider / 1000, clk / divider % 1000);
 } else if (divider > 1897) {




  divider = 1897;
  dev_warn(dev,
   "Speed too low (%u.%03u kHz), using %u.%03u kHz\n",
   speed / 1000, speed % 1000,
   clk / divider / 1000, clk / divider % 1000);
 }
 if (speed > 100000) {

  low_count = DIV_ROUND_CLOSEST(divider * 13, (13 + 6));
  high_count = DIV_ROUND_CLOSEST(divider * 6, (13 + 6));
  leadin = DIV_ROUND_UP(600 * (clk / 1000000), 1000);
  bus_free = DIV_ROUND_UP(1300 * (clk / 1000000), 1000);
 } else {

  low_count = DIV_ROUND_CLOSEST(divider * 47, (47 + 40));
  high_count = DIV_ROUND_CLOSEST(divider * 40, (47 + 40));
  leadin = DIV_ROUND_UP(4700 * (clk / 1000000), 1000);
  bus_free = DIV_ROUND_UP(4700 * (clk / 1000000), 1000);
 }
 rcv_count = high_count * 3 / 8;
 xmit_count = low_count * 3 / 8;

 dev_dbg(dev,
  "speed=%u(actual %u) divider=%u low=%u high=%u xmit=%u rcv=%u leadin=%u bus_free=%u\n",
  speed, clk / divider, divider, low_count, high_count,
  xmit_count, rcv_count, leadin, bus_free);

 low_count -= 2;
 high_count -= 7;
 i2c->timing0 = (high_count << 16) | rcv_count;
 i2c->timing1 = (low_count << 16) | xmit_count;
 i2c->timing2 = (bus_free << 16 | leadin);
}
