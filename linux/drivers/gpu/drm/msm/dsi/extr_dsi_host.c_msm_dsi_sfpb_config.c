
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int sfpb; } ;
typedef enum sfpb_ahb_arb_master_port_en { ____Placeholder_sfpb_ahb_arb_master_port_en } sfpb_ahb_arb_master_port_en ;


 int REG_SFPB_GPREG ;
 int SFPB_GPREG_MASTER_PORT_EN (int) ;
 int SFPB_GPREG_MASTER_PORT_EN__MASK ;
 int SFPB_MASTER_PORT_DISABLE ;
 int SFPB_MASTER_PORT_ENABLE ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void msm_dsi_sfpb_config(struct msm_dsi_host *msm_host, bool enable)
{
 enum sfpb_ahb_arb_master_port_en en;

 if (!msm_host->sfpb)
  return;

 en = enable ? SFPB_MASTER_PORT_ENABLE : SFPB_MASTER_PORT_DISABLE;

 regmap_update_bits(msm_host->sfpb, REG_SFPB_GPREG,
   SFPB_GPREG_MASTER_PORT_EN__MASK,
   SFPB_GPREG_MASTER_PORT_EN(en));
}
