
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dev; } ;
struct wuxga_nt_panel {TYPE_1__* backlight; TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;


 int drm_panel_remove (TYPE_2__*) ;
 int put_device (int *) ;

__attribute__((used)) static void wuxga_nt_panel_del(struct wuxga_nt_panel *wuxga_nt)
{
 if (wuxga_nt->base.dev)
  drm_panel_remove(&wuxga_nt->base);

 if (wuxga_nt->backlight)
  put_device(&wuxga_nt->backlight->dev);
}
