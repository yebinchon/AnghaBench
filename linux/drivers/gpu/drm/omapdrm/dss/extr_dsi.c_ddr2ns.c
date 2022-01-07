
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clkdco; } ;
struct TYPE_4__ {TYPE_1__ cinfo; } ;
struct dsi_data {TYPE_2__ pll; } ;



__attribute__((used)) static inline unsigned int ddr2ns(struct dsi_data *dsi, unsigned int ddr)
{
 unsigned long ddr_clk = dsi->pll.cinfo.clkdco / 4;

 return ddr * 1000 * 1000 / (ddr_clk / 1000);
}
