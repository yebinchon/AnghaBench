
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_ssi_port {scalar_t__ ssr_base; scalar_t__ sst_base; } ;


 scalar_t__ SSI_SSR_MODE_REG ;
 scalar_t__ SSI_SST_MODE_REG ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ssi_set_port_mode(struct omap_ssi_port *omap_port, u32 mode)
{
 writel(mode, omap_port->sst_base + SSI_SST_MODE_REG);
 writel(mode, omap_port->ssr_base + SSI_SSR_MODE_REG);

 mode = readl(omap_port->ssr_base + SSI_SSR_MODE_REG);

 return 0;
}
