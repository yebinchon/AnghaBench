
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graphics_object_id {int dummy; } ;
struct graphics_object_hpd_info {int hpd_int_gpio_uid; } ;
struct gpio_service {int dummy; } ;
struct gpio_pin_info {int mask; int offset; } ;
struct gpio {int dummy; } ;
struct dc_bios {TYPE_1__* funcs; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_2__ {scalar_t__ (* get_hpd_info ) (struct dc_bios*,struct graphics_object_id,struct graphics_object_hpd_info*) ;int (* get_gpio_pin_info ) (struct dc_bios*,int ,struct gpio_pin_info*) ;} ;


 int ASSERT (int) ;
 int BP_RESULT_NORECORD ;
 scalar_t__ BP_RESULT_OK ;
 struct gpio* dal_gpio_service_create_irq (struct gpio_service*,int ,int ) ;
 scalar_t__ stub1 (struct dc_bios*,struct graphics_object_id,struct graphics_object_hpd_info*) ;
 int stub2 (struct dc_bios*,int ,struct gpio_pin_info*) ;

struct gpio *get_hpd_gpio(struct dc_bios *dcb,
  struct graphics_object_id link_id,
  struct gpio_service *gpio_service)
{
 enum bp_result bp_result;
 struct graphics_object_hpd_info hpd_info;
 struct gpio_pin_info pin_info;

 if (dcb->funcs->get_hpd_info(dcb, link_id, &hpd_info) != BP_RESULT_OK)
  return ((void*)0);

 bp_result = dcb->funcs->get_gpio_pin_info(dcb,
  hpd_info.hpd_int_gpio_uid, &pin_info);

 if (bp_result != BP_RESULT_OK) {
  ASSERT(bp_result == BP_RESULT_NORECORD);
  return ((void*)0);
 }

 return dal_gpio_service_create_irq(
  gpio_service,
  pin_info.offset,
  pin_info.mask);
}
