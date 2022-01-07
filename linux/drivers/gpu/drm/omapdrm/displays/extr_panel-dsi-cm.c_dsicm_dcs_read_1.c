
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct panel_drv_data {int channel; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_3__ {int (* dcs_read ) (struct omap_dss_device*,int ,int ,int *,int) ;} ;
struct TYPE_4__ {TYPE_1__ dsi; } ;


 int stub1 (struct omap_dss_device*,int ,int ,int *,int) ;

__attribute__((used)) static int dsicm_dcs_read_1(struct panel_drv_data *ddata, u8 dcs_cmd, u8 *data)
{
 struct omap_dss_device *src = ddata->src;
 int r;
 u8 buf[1];

 r = src->ops->dsi.dcs_read(src, ddata->channel, dcs_cmd, buf, 1);

 if (r < 0)
  return r;

 *data = buf[0];

 return 0;
}
