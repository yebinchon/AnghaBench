
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capabilities; } ;
struct vmw_private {TYPE_1__ fifo; int * overlay_priv; } ;


 int VMW_OVERLAY_CAP_MASK ;

__attribute__((used)) static bool vmw_overlay_available(const struct vmw_private *dev_priv)
{
 return (dev_priv->overlay_priv != ((void*)0) &&
  ((dev_priv->fifo.capabilities & VMW_OVERLAY_CAP_MASK) ==
   VMW_OVERLAY_CAP_MASK));
}
