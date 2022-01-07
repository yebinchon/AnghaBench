
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl08x_driver_data {scalar_t__ base; TYPE_1__* vd; } ;
struct TYPE_2__ {scalar_t__ ftdmac020; scalar_t__ nomadik; } ;


 scalar_t__ FTDMAC020_CSR ;
 scalar_t__ PL080_CONFIG ;
 int PL080_CONFIG_ENABLE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pl08x_ensure_on(struct pl08x_driver_data *pl08x)
{

 if (pl08x->vd->nomadik)
  return;

 if (pl08x->vd->ftdmac020) {
  writel(PL080_CONFIG_ENABLE, pl08x->base + FTDMAC020_CSR);
  return;
 }
 writel(PL080_CONFIG_ENABLE, pl08x->base + PL080_CONFIG);
}
