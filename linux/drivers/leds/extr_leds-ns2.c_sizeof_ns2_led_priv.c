
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns2_led_priv {int dummy; } ;
struct ns2_led_data {int dummy; } ;



__attribute__((used)) static inline int sizeof_ns2_led_priv(int num_leds)
{
 return sizeof(struct ns2_led_priv) +
        (sizeof(struct ns2_led_data) * num_leds);
}
