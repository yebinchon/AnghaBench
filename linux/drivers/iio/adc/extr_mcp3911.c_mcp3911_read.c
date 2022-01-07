
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mcp3911 {TYPE_1__* spi; int dev_addr; } ;
struct TYPE_2__ {int dev; } ;


 int MCP3911_REG_READ (int,int ) ;
 int be32_to_cpus (int*) ;
 int dev_dbg (int *,char*,int,int) ;
 int spi_write_then_read (TYPE_1__*,int*,int,int*,int) ;

__attribute__((used)) static int mcp3911_read(struct mcp3911 *adc, u8 reg, u32 *val, u8 len)
{
 int ret;

 reg = MCP3911_REG_READ(reg, adc->dev_addr);
 ret = spi_write_then_read(adc->spi, &reg, 1, val, len);
 if (ret < 0)
  return ret;

 be32_to_cpus(val);
 *val >>= ((4 - len) * 8);
 dev_dbg(&adc->spi->dev, "reading 0x%x from register 0x%x\n", *val,
  reg >> 1);
 return ret;
}
