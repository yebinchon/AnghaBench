
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void** dotclkin; void* extal; void* mod; } ;
struct rcar_lvds {int dev; TYPE_2__ clocks; TYPE_1__* info; } ;
struct TYPE_3__ {int quirks; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int RCAR_LVDS_QUIRK_EXT_PLL ;
 int dev_err (int ,char*) ;
 void* rcar_lvds_get_clock (struct rcar_lvds*,char*,int) ;

__attribute__((used)) static int rcar_lvds_get_clocks(struct rcar_lvds *lvds)
{
 lvds->clocks.mod = rcar_lvds_get_clock(lvds, ((void*)0), 0);
 if (IS_ERR(lvds->clocks.mod))
  return PTR_ERR(lvds->clocks.mod);




 if (!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL))
  return 0;

 lvds->clocks.extal = rcar_lvds_get_clock(lvds, "extal", 1);
 if (IS_ERR(lvds->clocks.extal))
  return PTR_ERR(lvds->clocks.extal);

 lvds->clocks.dotclkin[0] = rcar_lvds_get_clock(lvds, "dclkin.0", 1);
 if (IS_ERR(lvds->clocks.dotclkin[0]))
  return PTR_ERR(lvds->clocks.dotclkin[0]);

 lvds->clocks.dotclkin[1] = rcar_lvds_get_clock(lvds, "dclkin.1", 1);
 if (IS_ERR(lvds->clocks.dotclkin[1]))
  return PTR_ERR(lvds->clocks.dotclkin[1]);


 if (!lvds->clocks.extal && !lvds->clocks.dotclkin[0] &&
     !lvds->clocks.dotclkin[1]) {
  dev_err(lvds->dev,
   "no input clock (extal, dclkin.0 or dclkin.1)\n");
  return -EINVAL;
 }

 return 0;
}
