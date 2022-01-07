
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mcp3911 {int dummy; } ;


 int mcp3911_read (struct mcp3911*,int ,int*,int ) ;
 int mcp3911_write (struct mcp3911*,int ,int,int ) ;

__attribute__((used)) static int mcp3911_update(struct mcp3911 *adc, u8 reg, u32 mask,
  u32 val, u8 len)
{
 u32 tmp;
 int ret;

 ret = mcp3911_read(adc, reg, &tmp, len);
 if (ret)
  return ret;

 val &= mask;
 val |= tmp & ~mask;
 return mcp3911_write(adc, reg, val, len);
}
