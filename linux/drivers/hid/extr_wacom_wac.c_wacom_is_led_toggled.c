
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_2__ features; } ;
struct TYPE_4__ {int count; } ;
struct wacom {TYPE_3__ wacom_wac; TYPE_1__ led; } ;


 scalar_t__ INTUOSP2_BT ;
 scalar_t__ WACOM_21UX2 ;

__attribute__((used)) static bool wacom_is_led_toggled(struct wacom *wacom, int button_count,
     int mask, int group)
{
 int group_button;






 if (wacom->wacom_wac.features.type == WACOM_21UX2)
  group = 1 - group;

 group_button = group * (button_count/wacom->led.count);

 if (wacom->wacom_wac.features.type == INTUOSP2_BT)
  group_button = 8;

 return mask & (1 << group_button);
}
