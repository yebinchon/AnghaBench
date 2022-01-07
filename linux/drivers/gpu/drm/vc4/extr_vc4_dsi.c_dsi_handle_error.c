
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_dsi {int port; } ;
typedef int irqreturn_t ;


 int DRM_ERROR (char*,int ,char const*) ;
 int IRQ_HANDLED ;

__attribute__((used)) static void dsi_handle_error(struct vc4_dsi *dsi,
        irqreturn_t *ret, u32 stat, u32 bit,
        const char *type)
{
 if (!(stat & bit))
  return;

 DRM_ERROR("DSI%d: %s error\n", dsi->port, type);
 *ret = IRQ_HANDLED;
}
