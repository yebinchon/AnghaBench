
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_ssi_controller {int fck; } ;
struct hsi_controller {int dummy; } ;


 unsigned long clk_get_rate (int ) ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;

__attribute__((used)) static unsigned long ssi_get_clk_rate(struct hsi_controller *ssi)
{
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);
 unsigned long rate = clk_get_rate(omap_ssi->fck);
 return rate;
}
