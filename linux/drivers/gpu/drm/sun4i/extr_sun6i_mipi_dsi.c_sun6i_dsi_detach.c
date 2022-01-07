
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int * device; int * panel; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;


 struct sun6i_dsi* host_to_sun6i_dsi (struct mipi_dsi_host*) ;

__attribute__((used)) static int sun6i_dsi_detach(struct mipi_dsi_host *host,
       struct mipi_dsi_device *device)
{
 struct sun6i_dsi *dsi = host_to_sun6i_dsi(host);

 dsi->panel = ((void*)0);
 dsi->device = ((void*)0);

 return 0;
}
