
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct hw_gpio_pin {int id; } ;
struct TYPE_4__ {int * regs; } ;
struct hw_ddc {int * masks; int * shifts; TYPE_1__ base; TYPE_2__* regs; } ;
struct TYPE_5__ {int gpio; } ;


 int ASSERT_CRITICAL (int) ;


 struct hw_ddc* HW_DDC_FROM_BASE (struct hw_gpio_pin*) ;
 TYPE_2__* ddc_clk_regs ;
 TYPE_2__* ddc_data_regs ;
 int ddc_mask ;
 int ddc_shift ;

__attribute__((used)) static void define_ddc_registers(
  struct hw_gpio_pin *pin,
  uint32_t en)
{
 struct hw_ddc *ddc = HW_DDC_FROM_BASE(pin);

 switch (pin->id) {
 case 128:
  ddc->regs = &ddc_data_regs[en];
  ddc->base.regs = &ddc_data_regs[en].gpio;
  break;
 case 129:
  ddc->regs = &ddc_clk_regs[en];
  ddc->base.regs = &ddc_clk_regs[en].gpio;
  break;
 default:
  ASSERT_CRITICAL(0);
  return;
 }

 ddc->shifts = &ddc_shift;
 ddc->masks = &ddc_mask;

}
