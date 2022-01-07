
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_ssi_controller {int fck_nb; int fck; int gdd_tasklet; } ;
struct hsi_controller {int id; } ;


 int clk_notifier_unregister (int ,int *) ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;
 int hsi_unregister_controller (struct hsi_controller*) ;
 int ida_simple_remove (int *,int) ;
 int platform_omap_ssi_ida ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void ssi_remove_controller(struct hsi_controller *ssi)
{
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);
 int id = ssi->id;
 tasklet_kill(&omap_ssi->gdd_tasklet);
 hsi_unregister_controller(ssi);
 clk_notifier_unregister(omap_ssi->fck, &omap_ssi->fck_nb);
 ida_simple_remove(&platform_omap_ssi_ida, id);
}
