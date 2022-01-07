
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {int * src; int channel; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_3__ {int (* release_vc ) (struct omap_dss_device*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ dsi; } ;


 int stub1 (struct omap_dss_device*,int ) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void dsicm_disconnect(struct omap_dss_device *src,
        struct omap_dss_device *dst)
{
 struct panel_drv_data *ddata = to_panel_data(dst);

 src->ops->dsi.release_vc(src, ddata->channel);
 ddata->src = ((void*)0);
}
