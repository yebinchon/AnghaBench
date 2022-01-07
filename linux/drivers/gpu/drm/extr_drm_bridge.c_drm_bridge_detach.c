
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {int * dev; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* detach ) (struct drm_bridge*) ;} ;


 scalar_t__ WARN_ON (int) ;
 int stub1 (struct drm_bridge*) ;

void drm_bridge_detach(struct drm_bridge *bridge)
{
 if (WARN_ON(!bridge))
  return;

 if (WARN_ON(!bridge->dev))
  return;

 if (bridge->funcs->detach)
  bridge->funcs->detach(bridge);

 bridge->dev = ((void*)0);
}
