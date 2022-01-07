
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hw_hpd {int base; } ;
struct dc_context {int dummy; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;


 int dal_hw_gpio_construct (int *,int,int ,struct dc_context*) ;

__attribute__((used)) static void dal_hw_hpd_construct(
 struct hw_hpd *pin,
 enum gpio_id id,
 uint32_t en,
 struct dc_context *ctx)
{
 dal_hw_gpio_construct(&pin->base, id, en, ctx);
}
