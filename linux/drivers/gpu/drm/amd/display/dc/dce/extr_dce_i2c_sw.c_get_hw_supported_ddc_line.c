
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_supported; } ;
struct ddc {TYPE_1__ hw_info; } ;
typedef enum gpio_ddc_line { ____Placeholder_gpio_ddc_line } gpio_ddc_line ;


 int BREAK_TO_DEBUGGER () ;
 int GPIO_DDC_LINE_COUNT ;
 int GPIO_DDC_LINE_UNKNOWN ;
 int dal_ddc_get_line (struct ddc*) ;

__attribute__((used)) static bool get_hw_supported_ddc_line(
 struct ddc *ddc,
 enum gpio_ddc_line *line)
{
 enum gpio_ddc_line line_found;

 *line = GPIO_DDC_LINE_UNKNOWN;

 if (!ddc) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (!ddc->hw_info.hw_supported)
  return 0;

 line_found = dal_ddc_get_line(ddc);

 if (line_found >= GPIO_DDC_LINE_COUNT)
  return 0;

 *line = line_found;

 return 1;
}
