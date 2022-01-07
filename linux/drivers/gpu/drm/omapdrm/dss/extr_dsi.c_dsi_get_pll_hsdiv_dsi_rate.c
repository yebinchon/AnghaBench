
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* clkout; } ;
struct TYPE_4__ {TYPE_1__ cinfo; } ;
struct dsi_data {TYPE_2__ pll; } ;


 size_t HSDIV_DSI ;

__attribute__((used)) static unsigned long dsi_get_pll_hsdiv_dsi_rate(struct dsi_data *dsi)
{
 return dsi->pll.cinfo.clkout[HSDIV_DSI];
}
