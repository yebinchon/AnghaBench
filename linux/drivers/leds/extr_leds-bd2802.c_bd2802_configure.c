
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bd2802_led_platform_data {int rgb_time; } ;
struct bd2802_led {int client; struct bd2802_led_platform_data* pdata; } ;


 int BD2802_REG_HOURSETUP ;
 int LED1 ;
 int LED2 ;
 int RED ;
 int bd2802_get_reg_addr (int ,int ,int ) ;
 int bd2802_write_byte (int ,int ,int ) ;

__attribute__((used)) static void bd2802_configure(struct bd2802_led *led)
{
 struct bd2802_led_platform_data *pdata = led->pdata;
 u8 reg;

 reg = bd2802_get_reg_addr(LED1, RED, BD2802_REG_HOURSETUP);
 bd2802_write_byte(led->client, reg, pdata->rgb_time);

 reg = bd2802_get_reg_addr(LED2, RED, BD2802_REG_HOURSETUP);
 bd2802_write_byte(led->client, reg, pdata->rgb_time);
}
