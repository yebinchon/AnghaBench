
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;
struct mcde_dsi {TYPE_1__* mcde; int * mdsi; } ;
struct TYPE_2__ {int * mdsi; } ;


 struct mcde_dsi* host_to_mcde_dsi (struct mipi_dsi_host*) ;

__attribute__((used)) static int mcde_dsi_host_detach(struct mipi_dsi_host *host,
    struct mipi_dsi_device *mdsi)
{
 struct mcde_dsi *d = host_to_mcde_dsi(host);

 d->mdsi = ((void*)0);
 if (d->mcde)
  d->mcde->mdsi = ((void*)0);

 return 0;
}
