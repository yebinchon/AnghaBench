
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct hw_hpd {int dummy; } ;
struct dc_context {int dummy; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;


 int ASSERT_CRITICAL (int) ;
 int GFP_KERNEL ;
 scalar_t__ GPIO_DDC_LINE_MAX ;
 scalar_t__ GPIO_DDC_LINE_MIN ;
 int construct (struct hw_hpd*,int,scalar_t__,struct dc_context*) ;
 struct hw_hpd* kzalloc (int,int ) ;

void dal_hw_hpd_init(
 struct hw_hpd **hw_hpd,
 struct dc_context *ctx,
 enum gpio_id id,
 uint32_t en)
{
 if ((en < GPIO_DDC_LINE_MIN) || (en > GPIO_DDC_LINE_MAX)) {
  ASSERT_CRITICAL(0);
  *hw_hpd = ((void*)0);
 }

 *hw_hpd = kzalloc(sizeof(struct hw_hpd), GFP_KERNEL);
 if (!*hw_hpd) {
  ASSERT_CRITICAL(0);
  return;
 }

 construct(*hw_hpd, id, en, ctx);
}
