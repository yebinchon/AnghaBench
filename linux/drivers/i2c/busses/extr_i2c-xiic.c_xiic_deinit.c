
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xiic_i2c {int dummy; } ;


 int XIIC_CR_ENABLE_DEVICE_MASK ;
 int XIIC_CR_REG_OFFSET ;
 int XIIC_RESETR_OFFSET ;
 int XIIC_RESET_MASK ;
 int xiic_getreg8 (struct xiic_i2c*,int ) ;
 int xiic_setreg32 (struct xiic_i2c*,int ,int ) ;
 int xiic_setreg8 (struct xiic_i2c*,int ,int) ;

__attribute__((used)) static void xiic_deinit(struct xiic_i2c *i2c)
{
 u8 cr;

 xiic_setreg32(i2c, XIIC_RESETR_OFFSET, XIIC_RESET_MASK);


 cr = xiic_getreg8(i2c, XIIC_CR_REG_OFFSET);
 xiic_setreg8(i2c, XIIC_CR_REG_OFFSET, cr & ~XIIC_CR_ENABLE_DEVICE_MASK);
}
