
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int dummy; } ;
struct hid_device {int dummy; } ;


 int REPORT_BRIGHTNESS ;
 int REPORT_CONTRAST ;
 int REPORT_EE_READ ;
 int REPORT_EE_WRITE ;
 int REPORT_IR_DATA ;
 int REPORT_KEY_STATE ;
 int REPORT_LED_STATE ;
 int REPORT_READ_MEMORY ;
 int REPORT_RESET ;
 int REPORT_WRITE_MEMORY ;
 int picolcd_exit_backlight (struct picolcd_data*) ;
 int picolcd_exit_cir (struct picolcd_data*) ;
 int picolcd_exit_framebuffer (struct picolcd_data*) ;
 int picolcd_exit_keys (struct picolcd_data*) ;
 int picolcd_exit_lcd (struct picolcd_data*) ;
 int picolcd_exit_leds (struct picolcd_data*) ;
 int picolcd_in_report (int ,struct hid_device*) ;
 int picolcd_init_backlight (struct picolcd_data*,int ) ;
 int picolcd_init_cir (struct picolcd_data*,int ) ;
 int picolcd_init_devfs (struct picolcd_data*,int ,int ,int ,int ,int ) ;
 int picolcd_init_framebuffer (struct picolcd_data*) ;
 int picolcd_init_keys (struct picolcd_data*,int ) ;
 int picolcd_init_lcd (struct picolcd_data*,int ) ;
 int picolcd_init_leds (struct picolcd_data*,int ) ;
 int picolcd_out_report (int ,struct hid_device*) ;

__attribute__((used)) static int picolcd_probe_lcd(struct hid_device *hdev, struct picolcd_data *data)
{
 int error;


 error = picolcd_init_keys(data, picolcd_in_report(REPORT_KEY_STATE, hdev));
 if (error)
  goto err;


 error = picolcd_init_cir(data, picolcd_in_report(REPORT_IR_DATA, hdev));
 if (error)
  goto err;


 error = picolcd_init_framebuffer(data);
 if (error)
  goto err;


 error = picolcd_init_lcd(data, picolcd_out_report(REPORT_CONTRAST, hdev));
 if (error)
  goto err;


 error = picolcd_init_backlight(data, picolcd_out_report(REPORT_BRIGHTNESS, hdev));
 if (error)
  goto err;


 error = picolcd_init_leds(data, picolcd_out_report(REPORT_LED_STATE, hdev));
 if (error)
  goto err;

 picolcd_init_devfs(data, picolcd_out_report(REPORT_EE_READ, hdev),
   picolcd_out_report(REPORT_EE_WRITE, hdev),
   picolcd_out_report(REPORT_READ_MEMORY, hdev),
   picolcd_out_report(REPORT_WRITE_MEMORY, hdev),
   picolcd_out_report(REPORT_RESET, hdev));
 return 0;
err:
 picolcd_exit_leds(data);
 picolcd_exit_backlight(data);
 picolcd_exit_lcd(data);
 picolcd_exit_framebuffer(data);
 picolcd_exit_cir(data);
 picolcd_exit_keys(data);
 return error;
}
