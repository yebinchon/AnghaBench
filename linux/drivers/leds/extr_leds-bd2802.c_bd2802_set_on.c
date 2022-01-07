
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bd2802_led {int client; int rgb_current; int adf_on; } ;
typedef enum led_ids { ____Placeholder_led_ids } led_ids ;
typedef enum led_colors { ____Placeholder_led_colors } led_colors ;


 int BD2802_CURRENT_000 ;
 int BD2802_ON ;
 int BD2802_PATTERN_FULL ;
 int BD2802_REG_CURRENT1SETUP ;
 int BD2802_REG_CURRENT2SETUP ;
 int BD2802_REG_WAVEPATTERN ;
 int bd2802_enable (struct bd2802_led*,int) ;
 int bd2802_get_reg_addr (int,int,int ) ;
 scalar_t__ bd2802_is_all_off (struct bd2802_led*) ;
 int bd2802_reset_cancel (struct bd2802_led*) ;
 int bd2802_update_state (struct bd2802_led*,int,int,int ) ;
 int bd2802_write_byte (int ,int ,int ) ;

__attribute__((used)) static void bd2802_set_on(struct bd2802_led *led, enum led_ids id,
       enum led_colors color)
{
 u8 reg;

 if (bd2802_is_all_off(led) && !led->adf_on)
  bd2802_reset_cancel(led);

 reg = bd2802_get_reg_addr(id, color, BD2802_REG_CURRENT1SETUP);
 bd2802_write_byte(led->client, reg, led->rgb_current);
 reg = bd2802_get_reg_addr(id, color, BD2802_REG_CURRENT2SETUP);
 bd2802_write_byte(led->client, reg, BD2802_CURRENT_000);
 reg = bd2802_get_reg_addr(id, color, BD2802_REG_WAVEPATTERN);
 bd2802_write_byte(led->client, reg, BD2802_PATTERN_FULL);

 bd2802_enable(led, id);
 bd2802_update_state(led, id, color, BD2802_ON);
}
