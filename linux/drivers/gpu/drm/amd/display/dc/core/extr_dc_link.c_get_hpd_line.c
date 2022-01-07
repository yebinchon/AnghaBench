
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio {int dummy; } ;
struct dc_link {TYPE_1__* ctx; int link_id; } ;
typedef enum hpd_source_id { ____Placeholder_hpd_source_id } hpd_source_id ;
struct TYPE_2__ {int gpio_service; int dc_bios; } ;


 int BREAK_TO_DEBUGGER () ;






 int HPD_SOURCEID1 ;
 int HPD_SOURCEID2 ;
 int HPD_SOURCEID3 ;
 int HPD_SOURCEID4 ;
 int HPD_SOURCEID5 ;
 int HPD_SOURCEID6 ;
 int HPD_SOURCEID_UNKNOWN ;
 int dal_gpio_destroy_irq (struct gpio**) ;
 int dal_irq_get_source (struct gpio*) ;
 struct gpio* get_hpd_gpio (int ,int ,int ) ;

__attribute__((used)) static enum hpd_source_id get_hpd_line(
  struct dc_link *link)
{
 struct gpio *hpd;
 enum hpd_source_id hpd_id = HPD_SOURCEID_UNKNOWN;

 hpd = get_hpd_gpio(link->ctx->dc_bios, link->link_id, link->ctx->gpio_service);

 if (hpd) {
  switch (dal_irq_get_source(hpd)) {
  case 133:
   hpd_id = HPD_SOURCEID1;
  break;
  case 132:
   hpd_id = HPD_SOURCEID2;
  break;
  case 131:
   hpd_id = HPD_SOURCEID3;
  break;
  case 130:
   hpd_id = HPD_SOURCEID4;
  break;
  case 129:
   hpd_id = HPD_SOURCEID5;
  break;
  case 128:
   hpd_id = HPD_SOURCEID6;
  break;
  default:
   BREAK_TO_DEBUGGER();
  break;
  }

  dal_gpio_destroy_irq(&hpd);
 }

 return hpd_id;
}
