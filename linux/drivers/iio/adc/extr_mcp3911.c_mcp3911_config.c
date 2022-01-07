
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mcp3911 {int dev_addr; TYPE_1__* spi; scalar_t__ clki; scalar_t__ vref; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int MCP3911_CONFIG_CLKEXT ;
 int MCP3911_CONFIG_VREFEXT ;
 int MCP3911_REG_CONFIG ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int mcp3911_read (struct mcp3911*,int ,int *,int) ;
 int mcp3911_write (struct mcp3911*,int ,int ,int) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int mcp3911_config(struct mcp3911 *adc, struct device_node *of_node)
{
 u32 configreg;
 int ret;

 of_property_read_u32(of_node, "device-addr", &adc->dev_addr);
 if (adc->dev_addr > 3) {
  dev_err(&adc->spi->dev,
   "invalid device address (%i). Must be in range 0-3.\n",
   adc->dev_addr);
  return -EINVAL;
 }
 dev_dbg(&adc->spi->dev, "use device address %i\n", adc->dev_addr);

 ret = mcp3911_read(adc, MCP3911_REG_CONFIG, &configreg, 2);
 if (ret)
  return ret;

 if (adc->vref) {
  dev_dbg(&adc->spi->dev, "use external voltage reference\n");
  configreg |= MCP3911_CONFIG_VREFEXT;
 } else {
  dev_dbg(&adc->spi->dev,
   "use internal voltage reference (1.2V)\n");
  configreg &= ~MCP3911_CONFIG_VREFEXT;
 }

 if (adc->clki) {
  dev_dbg(&adc->spi->dev, "use external clock as clocksource\n");
  configreg |= MCP3911_CONFIG_CLKEXT;
 } else {
  dev_dbg(&adc->spi->dev,
   "use crystal oscillator as clocksource\n");
  configreg &= ~MCP3911_CONFIG_CLKEXT;
 }

 return mcp3911_write(adc, MCP3911_REG_CONFIG, configreg, 2);
}
