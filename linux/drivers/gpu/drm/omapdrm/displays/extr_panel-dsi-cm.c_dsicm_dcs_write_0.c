
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct panel_drv_data {int channel; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_3__ {int (* dcs_write ) (struct omap_dss_device*,int ,int *,int) ;} ;
struct TYPE_4__ {TYPE_1__ dsi; } ;


 int stub1 (struct omap_dss_device*,int ,int *,int) ;

__attribute__((used)) static int dsicm_dcs_write_0(struct panel_drv_data *ddata, u8 dcs_cmd)
{
 struct omap_dss_device *src = ddata->src;

 return src->ops->dsi.dcs_write(src, ddata->channel, &dcs_cmd, 1);
}
