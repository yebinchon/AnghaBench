
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct hw_ddc {int dummy; } ;
struct dc_context {int dummy; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;


 int ASSERT_CRITICAL (int) ;
 int GFP_KERNEL ;
 scalar_t__ GPIO_DDC_LINE_MAX ;
 scalar_t__ GPIO_DDC_LINE_MIN ;
 int construct (struct hw_ddc*,int,scalar_t__,struct dc_context*) ;
 struct hw_ddc* kzalloc (int,int ) ;

void dal_hw_ddc_init(
 struct hw_ddc **hw_ddc,
 struct dc_context *ctx,
 enum gpio_id id,
 uint32_t en)
{
 if ((en < GPIO_DDC_LINE_MIN) || (en > GPIO_DDC_LINE_MAX)) {
  ASSERT_CRITICAL(0);
  *hw_ddc = ((void*)0);
 }

 *hw_ddc = kzalloc(sizeof(struct hw_ddc), GFP_KERNEL);
 if (!*hw_ddc) {
  ASSERT_CRITICAL(0);
  return;
 }

 construct(*hw_ddc, id, en, ctx);
}
