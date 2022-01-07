
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_hpd_config {int delay_on_connect; int delay_on_disconnect; } ;
struct gpio {int dummy; } ;
struct dc_link {int connector_signal; TYPE_1__* ctx; int link_id; scalar_t__ is_hpd_filter_disabled; } ;
struct TYPE_2__ {int gpio_service; int dc_bios; } ;


 int ASSERT_CRITICAL (int) ;
 int GPIO_MODE_INTERRUPT ;
 scalar_t__ GPIO_RESULT_OK ;







 int dal_gpio_close (struct gpio*) ;
 int dal_gpio_destroy_irq (struct gpio**) ;
 scalar_t__ dal_gpio_open (struct gpio*,int ) ;
 int dal_irq_setup_hpd_filter (struct gpio*,struct gpio_hpd_config*) ;
 struct gpio* get_hpd_gpio (int ,int ,int ) ;

__attribute__((used)) static bool program_hpd_filter(
 const struct dc_link *link)
{
 bool result = 0;

 struct gpio *hpd;

 int delay_on_connect_in_ms = 0;
 int delay_on_disconnect_in_ms = 0;

 if (link->is_hpd_filter_disabled)
  return 0;

 switch (link->connector_signal) {
 case 131:
 case 132:
 case 129:

  delay_on_connect_in_ms = 500;
  delay_on_disconnect_in_ms = 100;
  break;
 case 134:
 case 133:







  delay_on_connect_in_ms = 80;
  delay_on_disconnect_in_ms = 0;
  break;
 case 128:
 case 130:
 default:

  return 0;
 }


 hpd = get_hpd_gpio(link->ctx->dc_bios, link->link_id, link->ctx->gpio_service);

 if (!hpd)
  return result;


 if (dal_gpio_open(hpd, GPIO_MODE_INTERRUPT) == GPIO_RESULT_OK) {
  struct gpio_hpd_config config;

  config.delay_on_connect = delay_on_connect_in_ms;
  config.delay_on_disconnect = delay_on_disconnect_in_ms;

  dal_irq_setup_hpd_filter(hpd, &config);

  dal_gpio_close(hpd);

  result = 1;
 } else {
  ASSERT_CRITICAL(0);
 }


 dal_gpio_destroy_irq(&hpd);

 return result;
}
