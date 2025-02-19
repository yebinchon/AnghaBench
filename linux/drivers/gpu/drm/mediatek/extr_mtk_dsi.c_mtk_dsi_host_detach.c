
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct mtk_dsi {TYPE_1__ conn; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;


 int drm_helper_hpd_irq_event (scalar_t__) ;
 struct mtk_dsi* host_to_dsi (struct mipi_dsi_host*) ;

__attribute__((used)) static int mtk_dsi_host_detach(struct mipi_dsi_host *host,
          struct mipi_dsi_device *device)
{
 struct mtk_dsi *dsi = host_to_dsi(host);

 if (dsi->conn.dev)
  drm_helper_hpd_irq_event(dsi->conn.dev);

 return 0;
}
