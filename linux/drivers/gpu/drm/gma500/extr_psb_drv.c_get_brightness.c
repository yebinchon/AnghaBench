
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightness; } ;
struct backlight_device {TYPE_2__* ops; TYPE_1__ props; } ;
struct TYPE_4__ {int (* get_brightness ) (struct backlight_device*) ;} ;


 int backlight_update_status (struct backlight_device*) ;
 int stub1 (struct backlight_device*) ;

__attribute__((used)) static inline void get_brightness(struct backlight_device *bd)
{






}
