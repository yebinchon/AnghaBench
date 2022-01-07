
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct ddc {int pin_clock; } ;
struct dc_link {int ddc; int link_id; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum connector_id { ____Placeholder_connector_id } connector_id ;


 int ASSERT (int) ;
 int BREAK_TO_DEBUGGER () ;
 int CONNECTOR_ID_DISPLAY_PORT ;
 int CONNECTOR_ID_EDP ;
 int GPIO_DDC_CONFIG_TYPE_MODE_I2C ;
 int GPIO_MODE_INPUT ;
 scalar_t__ GPIO_RESULT_OK ;
 int dal_ddc_close (struct ddc*) ;
 scalar_t__ dal_ddc_open (struct ddc*,int ,int ) ;
 struct ddc* dal_ddc_service_get_ddc_pin (int ) ;
 int dal_gpio_destroy_ddc (struct ddc**) ;
 int dal_gpio_get_value (int ,scalar_t__*) ;
 int dal_graphics_object_id_get_connector_id (int ) ;
 int udelay (int) ;

bool dc_link_is_dp_sink_present(struct dc_link *link)
{
 enum gpio_result gpio_result;
 uint32_t clock_pin = 0;
 uint8_t retry = 0;
 struct ddc *ddc;

 enum connector_id connector_id =
  dal_graphics_object_id_get_connector_id(link->link_id);

 bool present =
  ((connector_id == CONNECTOR_ID_DISPLAY_PORT) ||
  (connector_id == CONNECTOR_ID_EDP));

 ddc = dal_ddc_service_get_ddc_pin(link->ddc);

 if (!ddc) {
  BREAK_TO_DEBUGGER();
  return present;
 }






 if (GPIO_RESULT_OK != dal_ddc_open(
  ddc, GPIO_MODE_INPUT, GPIO_DDC_CONFIG_TYPE_MODE_I2C)) {
  dal_gpio_destroy_ddc(&ddc);

  return present;
 }
 do {
  gpio_result = dal_gpio_get_value(ddc->pin_clock, &clock_pin);
  ASSERT(gpio_result == GPIO_RESULT_OK);
  if (clock_pin)
   udelay(1000);
  else
   break;
 } while (retry++ < 3);

 present = (gpio_result == GPIO_RESULT_OK) && !clock_pin;

 dal_ddc_close(ddc);

 return present;
}
