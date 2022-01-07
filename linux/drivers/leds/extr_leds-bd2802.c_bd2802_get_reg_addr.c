
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef enum led_ids { ____Placeholder_led_ids } led_ids ;
typedef enum led_colors { ____Placeholder_led_colors } led_colors ;


 scalar_t__ bd2802_get_base_offset (int,int) ;

__attribute__((used)) static inline u8 bd2802_get_reg_addr(enum led_ids id, enum led_colors color,
        u8 reg_offset)
{
 return reg_offset + bd2802_get_base_offset(id, color);
}
