
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; int * groups; } ;
struct wacom {TYPE_1__ led; } ;



__attribute__((used)) static void wacom_led_groups_release(void *data)
{
 struct wacom *wacom = data;

 wacom->led.groups = ((void*)0);
 wacom->led.count = 0;
}
