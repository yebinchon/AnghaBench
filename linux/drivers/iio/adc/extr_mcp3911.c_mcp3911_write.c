
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mcp3911 {TYPE_1__* spi; int dev_addr; } ;
struct TYPE_2__ {int dev; } ;


 int MCP3911_REG_WRITE (int,int ) ;
 int cpu_to_be32s (int*) ;
 int dev_dbg (int *,char*,int,int) ;
 int spi_write (TYPE_1__*,int*,int) ;

__attribute__((used)) static int mcp3911_write(struct mcp3911 *adc, u8 reg, u32 val, u8 len)
{
 dev_dbg(&adc->spi->dev, "writing 0x%x to register 0x%x\n", val, reg);

 val <<= (3 - len) * 8;
 cpu_to_be32s(&val);
 val |= MCP3911_REG_WRITE(reg, adc->dev_addr);

 return spi_write(adc->spi, &val, len + 1);
}
