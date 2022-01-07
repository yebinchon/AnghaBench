
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_lvds {int dummy; } ;


 int LVDPLLCR ;
 int LVDPLLCR_PLLDIVCNT_128M ;
 int LVDPLLCR_PLLDIVCNT_148M ;
 int LVDPLLCR_PLLDIVCNT_42M ;
 int LVDPLLCR_PLLDIVCNT_85M ;
 int rcar_lvds_write (struct rcar_lvds*,int ,int ) ;

__attribute__((used)) static void rcar_lvds_pll_setup_gen3(struct rcar_lvds *lvds, unsigned int freq)
{
 u32 val;

 if (freq < 42000000)
  val = LVDPLLCR_PLLDIVCNT_42M;
 else if (freq < 85000000)
  val = LVDPLLCR_PLLDIVCNT_85M;
 else if (freq < 128000000)
  val = LVDPLLCR_PLLDIVCNT_128M;
 else
  val = LVDPLLCR_PLLDIVCNT_148M;

 rcar_lvds_write(lvds, LVDPLLCR, val);
}
