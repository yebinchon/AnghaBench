
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xiic_i2c {int dummy; } ;


 int EBUSY ;
 int XIIC_SR_BUS_BUSY_MASK ;
 int XIIC_SR_REG_OFFSET ;
 int xiic_getreg8 (struct xiic_i2c*,int ) ;

__attribute__((used)) static int xiic_bus_busy(struct xiic_i2c *i2c)
{
 u8 sr = xiic_getreg8(i2c, XIIC_SR_REG_OFFSET);

 return (sr & XIIC_SR_BUS_BUSY_MASK) ? -EBUSY : 0;
}
