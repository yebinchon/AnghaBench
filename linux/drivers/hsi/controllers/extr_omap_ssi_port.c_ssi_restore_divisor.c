
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int divisor; } ;
struct omap_ssi_port {scalar_t__ sst_base; TYPE_1__ sst; } ;


 scalar_t__ SSI_SST_DIVISOR_REG ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int ssi_restore_divisor(struct omap_ssi_port *omap_port)
{
 writel_relaxed(omap_port->sst.divisor,
    omap_port->sst_base + SSI_SST_DIVISOR_REG);

 return 0;
}
