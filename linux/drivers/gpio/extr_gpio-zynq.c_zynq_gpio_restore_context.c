
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * int_any; int * int_polarity; int * int_type; int * int_en; int * dirm; int * datamsw; int * datalsw; } ;
struct zynq_gpio {scalar_t__ base_addr; TYPE_2__ context; TYPE_1__* p_data; } ;
struct TYPE_3__ {unsigned int max_bank; } ;


 scalar_t__ ZYNQ_GPIO_DATA_LSW_OFFSET (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_DATA_MSW_OFFSET (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_DIRM_OFFSET (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_INTANY_OFFSET (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_INTEN_OFFSET (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_INTPOL_OFFSET (unsigned int) ;
 scalar_t__ ZYNQ_GPIO_INTTYPE_OFFSET (unsigned int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void zynq_gpio_restore_context(struct zynq_gpio *gpio)
{
 unsigned int bank_num;

 for (bank_num = 0; bank_num < gpio->p_data->max_bank; bank_num++) {
  writel_relaxed(gpio->context.datalsw[bank_num],
          gpio->base_addr +
          ZYNQ_GPIO_DATA_LSW_OFFSET(bank_num));
  writel_relaxed(gpio->context.datamsw[bank_num],
          gpio->base_addr +
          ZYNQ_GPIO_DATA_MSW_OFFSET(bank_num));
  writel_relaxed(gpio->context.dirm[bank_num],
          gpio->base_addr +
          ZYNQ_GPIO_DIRM_OFFSET(bank_num));
  writel_relaxed(gpio->context.int_en[bank_num],
          gpio->base_addr +
          ZYNQ_GPIO_INTEN_OFFSET(bank_num));
  writel_relaxed(gpio->context.int_type[bank_num],
          gpio->base_addr +
          ZYNQ_GPIO_INTTYPE_OFFSET(bank_num));
  writel_relaxed(gpio->context.int_polarity[bank_num],
          gpio->base_addr +
          ZYNQ_GPIO_INTPOL_OFFSET(bank_num));
  writel_relaxed(gpio->context.int_any[bank_num],
          gpio->base_addr +
          ZYNQ_GPIO_INTANY_OFFSET(bank_num));
 }
}
