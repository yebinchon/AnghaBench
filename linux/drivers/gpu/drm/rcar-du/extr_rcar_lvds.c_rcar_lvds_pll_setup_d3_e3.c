
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_lvds {int dummy; } ;


 int __rcar_lvds_pll_setup_d3_e3 (struct rcar_lvds*,unsigned int,int) ;

__attribute__((used)) static void rcar_lvds_pll_setup_d3_e3(struct rcar_lvds *lvds, unsigned int freq)
{
 __rcar_lvds_pll_setup_d3_e3(lvds, freq, 0);
}
