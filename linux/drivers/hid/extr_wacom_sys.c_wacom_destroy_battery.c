
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * battery; int bat_desc; } ;
struct wacom {TYPE_2__ battery; TYPE_1__* hdev; } ;
struct TYPE_3__ {int dev; } ;


 int devres_release_group (int *,int *) ;

__attribute__((used)) static void wacom_destroy_battery(struct wacom *wacom)
{
 if (wacom->battery.battery) {
  devres_release_group(&wacom->hdev->dev,
         &wacom->battery.bat_desc);
  wacom->battery.battery = ((void*)0);
 }
}
