
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_hpd_config {scalar_t__ delay_on_disconnect; scalar_t__ delay_on_connect; } ;
struct gpio {int dummy; } ;
struct dc_link {int is_hpd_filter_disabled; TYPE_1__* ctx; int link_id; } ;
struct TYPE_2__ {int gpio_service; int dc_bios; } ;


 int ASSERT_CRITICAL (int) ;
 int GPIO_MODE_INTERRUPT ;
 scalar_t__ GPIO_RESULT_OK ;
 int dal_gpio_close (struct gpio*) ;
 int dal_gpio_destroy_irq (struct gpio**) ;
 scalar_t__ dal_gpio_open (struct gpio*,int ) ;
 int dal_irq_setup_hpd_filter (struct gpio*,struct gpio_hpd_config*) ;
 struct gpio* get_hpd_gpio (int ,int ,int ) ;
 int program_hpd_filter (struct dc_link*) ;

void dc_link_enable_hpd_filter(struct dc_link *link, bool enable)
{
 struct gpio *hpd;

 if (enable) {
  link->is_hpd_filter_disabled = 0;
  program_hpd_filter(link);
 } else {
  link->is_hpd_filter_disabled = 1;

  hpd = get_hpd_gpio(link->ctx->dc_bios, link->link_id, link->ctx->gpio_service);

  if (!hpd)
   return;


  if (dal_gpio_open(hpd, GPIO_MODE_INTERRUPT) == GPIO_RESULT_OK) {
   struct gpio_hpd_config config;

   config.delay_on_connect = 0;
   config.delay_on_disconnect = 0;

   dal_irq_setup_hpd_filter(hpd, &config);

   dal_gpio_close(hpd);
  } else {
   ASSERT_CRITICAL(0);
  }

  dal_gpio_destroy_irq(&hpd);
 }
}
