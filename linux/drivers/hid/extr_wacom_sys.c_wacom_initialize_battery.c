
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quirks; } ;
struct TYPE_4__ {TYPE_1__ features; } ;
struct wacom {int battery; TYPE_2__ wacom_wac; } ;


 int WACOM_QUIRK_BATTERY ;
 int __wacom_initialize_battery (struct wacom*,int *) ;

__attribute__((used)) static int wacom_initialize_battery(struct wacom *wacom)
{
 if (wacom->wacom_wac.features.quirks & WACOM_QUIRK_BATTERY)
  return __wacom_initialize_battery(wacom, &wacom->battery);

 return 0;
}
