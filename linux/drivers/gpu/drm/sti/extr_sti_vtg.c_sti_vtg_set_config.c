
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vtg {int sync_params; } ;
struct drm_display_mode {int dummy; } ;


 int VTG_MODE_MASTER ;
 int vtg_enable_irq (struct sti_vtg*) ;
 int vtg_reset (struct sti_vtg*) ;
 int vtg_set_mode (struct sti_vtg*,int ,int ,struct drm_display_mode const*) ;

void sti_vtg_set_config(struct sti_vtg *vtg,
  const struct drm_display_mode *mode)
{

 vtg_set_mode(vtg, VTG_MODE_MASTER, vtg->sync_params, mode);

 vtg_reset(vtg);

 vtg_enable_irq(vtg);
}
