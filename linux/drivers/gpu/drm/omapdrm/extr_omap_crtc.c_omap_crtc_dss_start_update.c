
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_drm_private {int dispc; TYPE_1__* dispc_ops; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int (* mgr_enable ) (int ,int,int) ;} ;


 int stub1 (int ,int,int) ;

__attribute__((used)) static void omap_crtc_dss_start_update(struct omap_drm_private *priv,
           enum omap_channel channel)
{
 priv->dispc_ops->mgr_enable(priv->dispc, channel, 1);
}
