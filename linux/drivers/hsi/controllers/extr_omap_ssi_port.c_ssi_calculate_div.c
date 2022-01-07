
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_ssi_controller {int max_speed; int fck_rate; } ;
struct hsi_controller {int device; } ;


 int dev_dbg (int *,char*,int,int ,int) ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;

__attribute__((used)) static u32 ssi_calculate_div(struct hsi_controller *ssi)
{
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);
 u32 tx_fckrate = (u32) omap_ssi->fck_rate;


 tx_fckrate >>= 1;

 tx_fckrate--;
 dev_dbg(&ssi->device, "TX div %d for fck_rate %lu Khz speed %d Kb/s\n",
  tx_fckrate / omap_ssi->max_speed, omap_ssi->fck_rate,
  omap_ssi->max_speed);

 return tx_fckrate / omap_ssi->max_speed;
}
