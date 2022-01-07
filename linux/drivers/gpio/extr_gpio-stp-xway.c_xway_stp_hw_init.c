
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xway_stp {int edge; int groups; int dsl; int phy1; int phy2; int reserved; int virt; } ;


 int XWAY_STP_ADSL_MASK ;
 int XWAY_STP_ADSL_SHIFT ;
 int XWAY_STP_AR ;
 int XWAY_STP_CON0 ;
 int XWAY_STP_CON1 ;
 int XWAY_STP_CON_SWU ;
 int XWAY_STP_CPU0 ;
 int XWAY_STP_CPU1 ;
 int XWAY_STP_EDGE_MASK ;
 int XWAY_STP_GROUP_MASK ;
 int XWAY_STP_PHY1_SHIFT ;
 int XWAY_STP_PHY2_SHIFT ;
 int XWAY_STP_PHY_MASK ;
 int XWAY_STP_UPD_FPI ;
 int XWAY_STP_UPD_MASK ;
 int xway_stp_w32 (int ,int ,int ) ;
 int xway_stp_w32_mask (int ,int,int,int ) ;

__attribute__((used)) static void xway_stp_hw_init(struct xway_stp *chip)
{

 xway_stp_w32(chip->virt, 0, XWAY_STP_AR);
 xway_stp_w32(chip->virt, 0, XWAY_STP_CPU0);
 xway_stp_w32(chip->virt, 0, XWAY_STP_CPU1);
 xway_stp_w32(chip->virt, XWAY_STP_CON_SWU, XWAY_STP_CON0);
 xway_stp_w32(chip->virt, 0, XWAY_STP_CON1);


 xway_stp_w32_mask(chip->virt, XWAY_STP_EDGE_MASK,
    chip->edge, XWAY_STP_CON0);


 xway_stp_w32_mask(chip->virt, XWAY_STP_GROUP_MASK,
    chip->groups, XWAY_STP_CON1);


 xway_stp_w32_mask(chip->virt,
   XWAY_STP_ADSL_MASK << XWAY_STP_ADSL_SHIFT,
   chip->dsl << XWAY_STP_ADSL_SHIFT,
   XWAY_STP_CON0);


 xway_stp_w32_mask(chip->virt,
   XWAY_STP_PHY_MASK << XWAY_STP_PHY1_SHIFT,
   chip->phy1 << XWAY_STP_PHY1_SHIFT,
   XWAY_STP_CON0);
 xway_stp_w32_mask(chip->virt,
   XWAY_STP_PHY_MASK << XWAY_STP_PHY2_SHIFT,
   chip->phy2 << XWAY_STP_PHY2_SHIFT,
   XWAY_STP_CON1);


 chip->reserved = (chip->phy2 << 5) | (chip->phy1 << 2) | chip->dsl;





 if (chip->reserved)
  xway_stp_w32_mask(chip->virt, XWAY_STP_UPD_MASK,
   XWAY_STP_UPD_FPI, XWAY_STP_CON1);
}
