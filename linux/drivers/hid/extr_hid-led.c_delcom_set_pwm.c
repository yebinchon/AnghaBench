
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int major_cmd; int minor_cmd; int data_msb; int data_lsb; } ;
union delcom_packet {int data; TYPE_1__ tx; } ;
struct TYPE_5__ {int brightness; } ;
struct hidled_led {TYPE_3__* rgb; TYPE_2__ cdev; } ;
struct TYPE_6__ {int ldev; } ;


 int delcom_get_lednum (struct hidled_led*) ;
 int hidled_send (int ,int ) ;

__attribute__((used)) static int delcom_set_pwm(struct hidled_led *led)
{
 union delcom_packet dp = { .tx.major_cmd = 101, .tx.minor_cmd = 34 };

 dp.tx.data_lsb = delcom_get_lednum(led);
 dp.tx.data_msb = led->cdev.brightness;

 return hidled_send(led->rgb->ldev, dp.data);
}
