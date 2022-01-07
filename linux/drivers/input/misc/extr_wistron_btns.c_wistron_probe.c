
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct platform_device {int dev; } ;


 int BLUETOOTH ;
 int WIFI ;
 int bios_attach () ;
 int bios_detach () ;
 int bios_get_cmos_address () ;
 int bios_get_default_setting (int ) ;
 int bios_set_state (int ,int) ;
 int bluetooth_enabled ;
 int cmos_address ;
 int have_bluetooth ;
 scalar_t__ have_wifi ;
 int setup_input_dev () ;
 int wifi_enabled ;
 int wistron_led_init (int *) ;

__attribute__((used)) static int wistron_probe(struct platform_device *dev)
{
 int err;

 bios_attach();
 cmos_address = bios_get_cmos_address();

 if (have_wifi) {
  u16 wifi = bios_get_default_setting(WIFI);
  if (wifi & 1)
   wifi_enabled = wifi & 2;
  else
   have_wifi = 0;

  if (have_wifi)
   bios_set_state(WIFI, wifi_enabled);
 }

 if (have_bluetooth) {
  u16 bt = bios_get_default_setting(BLUETOOTH);
  if (bt & 1)
   bluetooth_enabled = bt & 2;
  else
   have_bluetooth = 0;

  if (have_bluetooth)
   bios_set_state(BLUETOOTH, bluetooth_enabled);
 }

 wistron_led_init(&dev->dev);

 err = setup_input_dev();
 if (err) {
  bios_detach();
  return err;
 }

 return 0;
}
