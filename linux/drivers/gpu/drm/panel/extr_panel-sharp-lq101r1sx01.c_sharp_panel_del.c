
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dev; } ;
struct sharp_panel {TYPE_1__* link2; TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;


 int drm_panel_remove (TYPE_2__*) ;
 int put_device (int *) ;

__attribute__((used)) static void sharp_panel_del(struct sharp_panel *sharp)
{
 if (sharp->base.dev)
  drm_panel_remove(&sharp->base);

 if (sharp->link2)
  put_device(&sharp->link2->dev);
}
