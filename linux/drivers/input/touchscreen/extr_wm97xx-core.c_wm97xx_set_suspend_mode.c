
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wm97xx {TYPE_1__* input_dev; scalar_t__ suspend_mode; } ;
struct TYPE_2__ {int dev; } ;


 int device_init_wakeup (int *,int) ;

void wm97xx_set_suspend_mode(struct wm97xx *wm, u16 mode)
{
 wm->suspend_mode = mode;
 device_init_wakeup(&wm->input_dev->dev, mode != 0);
}
