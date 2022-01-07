
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct radeon_i2c_bus_rec {int mask_clk_reg; int mask_data_reg; int en_clk_reg; int en_data_reg; int y_clk_reg; int y_data_reg; int a_clk_reg; int a_data_reg; int mask_clk_mask; int mask_data_mask; int en_clk_mask; int en_data_mask; int y_clk_mask; int y_data_mask; int a_clk_mask; int a_data_mask; int hw_capable; int mm_i2c; int i2c_id; int valid; } ;
struct TYPE_5__ {scalar_t__ bfHW_Capable; } ;
struct TYPE_6__ {int ucAccess; TYPE_1__ sbfAccess; } ;
struct TYPE_7__ {int ucClkMaskShift; int ucDataMaskShift; int ucClkEnShift; int ucDataEnShift; int ucClkY_Shift; int ucDataY_Shift; int ucClkA_Shift; int ucDataA_Shift; TYPE_2__ sucI2cId; int usDataA_RegisterIndex; int usClkA_RegisterIndex; int usDataY_RegisterIndex; int usClkY_RegisterIndex; int usDataEnRegisterIndex; int usClkEnRegisterIndex; int usDataMaskRegisterIndex; int usClkMaskRegisterIndex; } ;
typedef TYPE_3__ ATOM_GPIO_I2C_ASSIGMENT ;


 int le16_to_cpu (int ) ;
 int memset (struct radeon_i2c_bus_rec*,int ,int) ;

__attribute__((used)) static struct radeon_i2c_bus_rec radeon_get_bus_rec_for_i2c_gpio(ATOM_GPIO_I2C_ASSIGMENT *gpio)
{
 struct radeon_i2c_bus_rec i2c;

 memset(&i2c, 0, sizeof(struct radeon_i2c_bus_rec));

 i2c.mask_clk_reg = le16_to_cpu(gpio->usClkMaskRegisterIndex) * 4;
 i2c.mask_data_reg = le16_to_cpu(gpio->usDataMaskRegisterIndex) * 4;
 i2c.en_clk_reg = le16_to_cpu(gpio->usClkEnRegisterIndex) * 4;
 i2c.en_data_reg = le16_to_cpu(gpio->usDataEnRegisterIndex) * 4;
 i2c.y_clk_reg = le16_to_cpu(gpio->usClkY_RegisterIndex) * 4;
 i2c.y_data_reg = le16_to_cpu(gpio->usDataY_RegisterIndex) * 4;
 i2c.a_clk_reg = le16_to_cpu(gpio->usClkA_RegisterIndex) * 4;
 i2c.a_data_reg = le16_to_cpu(gpio->usDataA_RegisterIndex) * 4;
 i2c.mask_clk_mask = (1 << gpio->ucClkMaskShift);
 i2c.mask_data_mask = (1 << gpio->ucDataMaskShift);
 i2c.en_clk_mask = (1 << gpio->ucClkEnShift);
 i2c.en_data_mask = (1 << gpio->ucDataEnShift);
 i2c.y_clk_mask = (1 << gpio->ucClkY_Shift);
 i2c.y_data_mask = (1 << gpio->ucDataY_Shift);
 i2c.a_clk_mask = (1 << gpio->ucClkA_Shift);
 i2c.a_data_mask = (1 << gpio->ucDataA_Shift);

 if (gpio->sucI2cId.sbfAccess.bfHW_Capable)
  i2c.hw_capable = 1;
 else
  i2c.hw_capable = 0;

 if (gpio->sucI2cId.ucAccess == 0xa0)
  i2c.mm_i2c = 1;
 else
  i2c.mm_i2c = 0;

 i2c.i2c_id = gpio->sucI2cId.ucAccess;

 if (i2c.mask_clk_reg)
  i2c.valid = 1;
 else
  i2c.valid = 0;

 return i2c;
}
