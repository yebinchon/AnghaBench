
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int hactive; int vactive; } ;
struct dsi_data {int update_channel; void (* framedone_callback ) (int,void*) ;int update_bytes; int pix_fmt; TYPE_1__ vm; void* framedone_data; } ;


 int dsi_get_pixel_size (int ) ;
 int dsi_perf_mark_setup (struct dsi_data*) ;
 int dsi_update_screen_dispc (struct dsi_data*) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_update(struct omap_dss_device *dssdev, int channel,
  void (*callback)(int, void *), void *data)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);
 u16 dw, dh;

 dsi_perf_mark_setup(dsi);

 dsi->update_channel = channel;

 dsi->framedone_callback = callback;
 dsi->framedone_data = data;

 dw = dsi->vm.hactive;
 dh = dsi->vm.vactive;





 dsi_update_screen_dispc(dsi);

 return 0;
}
