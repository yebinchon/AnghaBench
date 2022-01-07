
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct hw_gpio_pin {int dummy; } ;
struct TYPE_9__ {int en; } ;
struct hw_gpio {TYPE_4__ base; } ;
struct hw_ddc {TYPE_3__* regs; struct hw_gpio base; } ;
struct TYPE_6__ {int type; int clock_en_bit_present; int data_en_bit_present; } ;
struct TYPE_7__ {TYPE_1__ ddc; } ;
struct gpio_config_data {TYPE_2__ config; int type; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
struct TYPE_10__ {int MASK_reg; } ;
struct TYPE_8__ {int dc_gpio_aux_ctrl_5; int phy_aux_cntl; } ;


 int ASSERT_CRITICAL (int) ;
 int AUX_PAD1_MODE ;
 int AUX_PAD_RXSEL ;
 int BREAK_TO_DEBUGGER () ;
 int DC_GPIO_DDC1CLK_PD_EN ;
 int DC_GPIO_DDC1DATA_PD_EN ;
 int DC_GPIO_SCL_PD_DIS ;
 int DC_GPIO_SDA_PD_DIS ;
 int DC_I2C_DDC1_EDID_DETECT_ENABLE ;
 int DC_I2C_DDC1_EDID_DETECT_MODE ;
 int DC_I2C_DDC1_ENABLE ;
 int DDC_PAD_I2CMODE ;
 int GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE ;





 int GPIO_DDC_LINE_DDC1 ;
 int GPIO_DDC_LINE_DDC_VGA ;
 int GPIO_DDC_LINE_VIP_PAD ;
 int GPIO_RESULT_NON_SPECIFIC_ERROR ;
 int GPIO_RESULT_NULL_HANDLE ;
 int GPIO_RESULT_OK ;
 struct hw_ddc* HW_DDC_FROM_BASE (struct hw_gpio_pin*) ;
 int REG_GET_2 (int ,int ,int *,int ,int *) ;
 int REG_GET_3 (int ,int ,int *,int ,int *,int ,int *) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int) ;
 int dc_gpio_aux_ctrl_5 ;
 int ddc_setup ;
 TYPE_5__ gpio ;
 int msleep (int) ;
 int phy_aux_cntl ;

__attribute__((used)) static enum gpio_result set_config(
 struct hw_gpio_pin *ptr,
 const struct gpio_config_data *config_data)
{
 struct hw_ddc *ddc = HW_DDC_FROM_BASE(ptr);
 struct hw_gpio *hw_gpio = ((void*)0);
 uint32_t regval;
 uint32_t ddc_data_pd_en = 0;
 uint32_t ddc_clk_pd_en = 0;
 uint32_t aux_pad_mode = 0;

 hw_gpio = &ddc->base;

 if (hw_gpio == ((void*)0)) {
  ASSERT_CRITICAL(0);
  return GPIO_RESULT_NULL_HANDLE;
 }

 regval = REG_GET_3(gpio.MASK_reg,
   DC_GPIO_DDC1DATA_PD_EN, &ddc_data_pd_en,
   DC_GPIO_DDC1CLK_PD_EN, &ddc_clk_pd_en,
   AUX_PAD1_MODE, &aux_pad_mode);

 switch (config_data->config.ddc.type) {
 case 130:




  if (hw_gpio->base.en != GPIO_DDC_LINE_VIP_PAD) {
   if (!ddc_data_pd_en || !ddc_clk_pd_en) {

    REG_SET_2(gpio.MASK_reg, regval,
      DC_GPIO_DDC1DATA_PD_EN, 1,
      DC_GPIO_DDC1CLK_PD_EN, 1);

    if (config_data->type ==
      GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE)
     msleep(3);
   }
  } else {
   uint32_t reg2;
   uint32_t sda_pd_dis = 0;
   uint32_t scl_pd_dis = 0;

   reg2 = REG_GET_2(gpio.MASK_reg,
     DC_GPIO_SDA_PD_DIS, &sda_pd_dis,
     DC_GPIO_SCL_PD_DIS, &scl_pd_dis);

   if (sda_pd_dis) {
    REG_SET(gpio.MASK_reg, regval,
      DC_GPIO_SDA_PD_DIS, 0);

    if (config_data->type ==
      GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE)
     msleep(3);
   }

   if (!scl_pd_dis) {
    REG_SET(gpio.MASK_reg, regval,
      DC_GPIO_SCL_PD_DIS, 1);

    if (config_data->type ==
      GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE)
     msleep(3);
   }
  }

  if (aux_pad_mode) {


   if (config_data->config.ddc.data_en_bit_present ||
    config_data->config.ddc.clock_en_bit_present)


    msleep(2);




   REG_UPDATE(gpio.MASK_reg,
     AUX_PAD1_MODE, 0);
  }
  return GPIO_RESULT_OK;
 case 131:

  if (!aux_pad_mode) {
   REG_SET(gpio.MASK_reg, regval,
     AUX_PAD1_MODE, 1);
  }







  return GPIO_RESULT_OK;
 case 129:
  if ((hw_gpio->base.en >= GPIO_DDC_LINE_DDC1) &&
   (hw_gpio->base.en <= GPIO_DDC_LINE_DDC_VGA)) {
   REG_UPDATE_3(ddc_setup,
    DC_I2C_DDC1_ENABLE, 1,
    DC_I2C_DDC1_EDID_DETECT_ENABLE, 1,
    DC_I2C_DDC1_EDID_DETECT_MODE, 0);
   return GPIO_RESULT_OK;
  }
 break;
 case 128:
  if ((hw_gpio->base.en >= GPIO_DDC_LINE_DDC1) &&
   (hw_gpio->base.en <= GPIO_DDC_LINE_DDC_VGA)) {
   REG_UPDATE_3(ddc_setup,
    DC_I2C_DDC1_ENABLE, 1,
    DC_I2C_DDC1_EDID_DETECT_ENABLE, 1,
    DC_I2C_DDC1_EDID_DETECT_MODE, 1);
   return GPIO_RESULT_OK;
  }
 break;
 case 132:
  if ((hw_gpio->base.en >= GPIO_DDC_LINE_DDC1) &&
   (hw_gpio->base.en <= GPIO_DDC_LINE_DDC_VGA)) {
   REG_UPDATE_2(ddc_setup,
    DC_I2C_DDC1_ENABLE, 0,
    DC_I2C_DDC1_EDID_DETECT_ENABLE, 0);
   return GPIO_RESULT_OK;
  }
 break;
 }

 BREAK_TO_DEBUGGER();

 return GPIO_RESULT_NON_SPECIFIC_ERROR;
}
