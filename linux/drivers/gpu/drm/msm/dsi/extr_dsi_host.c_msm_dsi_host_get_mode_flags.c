
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_host {int dummy; } ;
struct TYPE_2__ {unsigned long mode_flags; } ;


 TYPE_1__* to_msm_dsi_host (struct mipi_dsi_host*) ;

unsigned long msm_dsi_host_get_mode_flags(struct mipi_dsi_host *host)
{
 return to_msm_dsi_host(host)->mode_flags;
}
