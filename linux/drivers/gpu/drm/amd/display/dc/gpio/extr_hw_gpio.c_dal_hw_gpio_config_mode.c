
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct hw_gpio {TYPE_1__ base; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;


 int A ;
 int A_reg ;
 int EN ;
 int EN_reg ;





 int GPIO_RESULT_NON_SPECIFIC_ERROR ;
 int GPIO_RESULT_OK ;
 int MASK ;
 int MASK_reg ;
 int REG_UPDATE (int ,int ,int) ;

enum gpio_result dal_hw_gpio_config_mode(
 struct hw_gpio *gpio,
 enum gpio_mode mode)
{
 gpio->base.mode = mode;

 switch (mode) {
 case 130:


  REG_UPDATE(EN_reg, EN, 0);
  REG_UPDATE(MASK_reg, MASK, 1);
  return GPIO_RESULT_OK;
 case 128:


  REG_UPDATE(A_reg, A, 0);
  REG_UPDATE(MASK_reg, MASK, 1);
  return GPIO_RESULT_OK;
 case 132:


  REG_UPDATE(A_reg, A, 0);
  REG_UPDATE(MASK_reg, MASK, 1);
  return GPIO_RESULT_OK;
 case 131:

  REG_UPDATE(MASK_reg, MASK, 0);
  return GPIO_RESULT_OK;
 case 129:

  REG_UPDATE(MASK_reg, MASK, 0);
  return GPIO_RESULT_OK;
 default:
  return GPIO_RESULT_NON_SPECIFIC_ERROR;
 }
}
