
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct gpio_service {int ctx; TYPE_2__ factory; } ;
struct TYPE_6__ {int hpd; int generic; int ddc; } ;
struct gpio {int id; int output_state; int * pin; TYPE_3__ hw_container; struct gpio_service* service; int mode; int en; } ;
typedef enum gpio_pin_output_state { ____Placeholder_gpio_pin_output_state } gpio_pin_output_state ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
struct TYPE_4__ {int (* init_hpd ) (int *,int ,int,int ) ;int (* init_generic ) (int *,int ,int,int ) ;int (* init_ddc_data ) (int *,int ,int,int ) ;} ;


 int ASSERT_CRITICAL (int) ;
 int GFP_KERNEL ;






 int GPIO_MODE_UNKNOWN ;
 struct gpio* kzalloc (int,int ) ;
 int stub1 (int *,int ,int,int ) ;
 int stub2 (int *,int ,int,int ) ;
 int stub3 (int *,int ,int,int ) ;
 int stub4 (int *,int ,int,int ) ;

struct gpio *dal_gpio_create(
 struct gpio_service *service,
 enum gpio_id id,
 uint32_t en,
 enum gpio_pin_output_state output_state)
{
 struct gpio *gpio = kzalloc(sizeof(struct gpio), GFP_KERNEL);

 if (!gpio) {
  ASSERT_CRITICAL(0);
  return ((void*)0);
 }

 gpio->service = service;
 gpio->pin = ((void*)0);
 gpio->id = id;
 gpio->en = en;
 gpio->mode = GPIO_MODE_UNKNOWN;
 gpio->output_state = output_state;


 switch (gpio->id) {
 case 132:
  gpio->service->factory.funcs->init_ddc_data(&gpio->hw_container.ddc, service->ctx, id, en);
  break;
 case 133:
  gpio->service->factory.funcs->init_ddc_data(&gpio->hw_container.ddc, service->ctx, id, en);
  break;
 case 131:
  gpio->service->factory.funcs->init_generic(&gpio->hw_container.generic, service->ctx, id, en);
  break;
 case 129:
  gpio->service->factory.funcs->init_hpd(&gpio->hw_container.hpd, service->ctx, id, en);
  break;

 case 128:
  break;
 case 130:
  break;
 default:
  ASSERT_CRITICAL(0);
  gpio->pin = ((void*)0);
 }

 return gpio;
}
