
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int major_cmd; int minor_cmd; int data_lsb; scalar_t__ data_msb; } ;
union delcom_packet {int data; TYPE_1__ tx; } ;
struct hidled_led {TYPE_2__* rgb; } ;
struct TYPE_4__ {int ldev; } ;


 int delcom_get_lednum (struct hidled_led*) ;
 int hidled_send (int ,int ) ;

__attribute__((used)) static int delcom_enable_led(struct hidled_led *led)
{
 union delcom_packet dp = { .tx.major_cmd = 101, .tx.minor_cmd = 12 };

 dp.tx.data_lsb = 1 << delcom_get_lednum(led);
 dp.tx.data_msb = 0;

 return hidled_send(led->rgb->ldev, dp.data);
}
