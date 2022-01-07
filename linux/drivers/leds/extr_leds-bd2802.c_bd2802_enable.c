
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bd2802_led {int client; } ;
typedef enum led_ids { ____Placeholder_led_ids } led_ids ;


 int BD2802_REG_CONTROL ;
 int LED1 ;
 int LED2 ;
 int LED_CTL (int,int) ;
 int bd2802_is_led_off (struct bd2802_led*,int) ;
 int bd2802_write_byte (int ,int ,int) ;

__attribute__((used)) static void bd2802_enable(struct bd2802_led *led, enum led_ids id)
{
 enum led_ids other_led = (id == LED1) ? LED2 : LED1;
 u8 value, other_led_on;

 other_led_on = !bd2802_is_led_off(led, other_led);
 if (id == LED1)
  value = LED_CTL(other_led_on, 1);
 else
  value = LED_CTL(1 , other_led_on);

 bd2802_write_byte(led->client, BD2802_REG_CONTROL, value);
}
