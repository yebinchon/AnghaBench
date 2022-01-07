
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct gpio_service {int ctx; TYPE_2__ translate; } ;
struct gpio_ddc_hw_info {int dummy; } ;
struct ddc {void* pin_data; int ctx; struct gpio_ddc_hw_info hw_info; void* pin_clock; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
struct TYPE_3__ {int (* offset_to_id ) (int ,int ,int*,int *) ;} ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int GPIO_ID_DDC_CLOCK ;
 int GPIO_ID_DDC_DATA ;
 int GPIO_PIN_OUTPUT_STATE_DEFAULT ;
 void* dal_gpio_create (struct gpio_service*,int ,int ,int ) ;
 int dal_gpio_destroy (void**) ;
 int kfree (struct ddc*) ;
 struct ddc* kzalloc (int,int ) ;
 int stub1 (int ,int ,int*,int *) ;

struct ddc *dal_gpio_create_ddc(
 struct gpio_service *service,
 uint32_t offset,
 uint32_t mask,
 struct gpio_ddc_hw_info *info)
{
 enum gpio_id id;
 uint32_t en;
 struct ddc *ddc;

 if (!service->translate.funcs->offset_to_id(offset, mask, &id, &en))
  return ((void*)0);

 ddc = kzalloc(sizeof(struct ddc), GFP_KERNEL);

 if (!ddc) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 ddc->pin_data = dal_gpio_create(
  service, GPIO_ID_DDC_DATA, en, GPIO_PIN_OUTPUT_STATE_DEFAULT);

 if (!ddc->pin_data) {
  BREAK_TO_DEBUGGER();
  goto failure_1;
 }

 ddc->pin_clock = dal_gpio_create(
  service, GPIO_ID_DDC_CLOCK, en, GPIO_PIN_OUTPUT_STATE_DEFAULT);

 if (!ddc->pin_clock) {
  BREAK_TO_DEBUGGER();
  goto failure_2;
 }

 ddc->hw_info = *info;

 ddc->ctx = service->ctx;

 return ddc;

failure_2:
 dal_gpio_destroy(&ddc->pin_data);

failure_1:
 kfree(ddc);

 return ((void*)0);
}
