
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_crtc {int initialized; int clock; int extclock; int group; } ;


 int clk_disable_unprepare (int ) ;
 int rcar_du_group_put (int ) ;

__attribute__((used)) static void rcar_du_crtc_put(struct rcar_du_crtc *rcrtc)
{
 rcar_du_group_put(rcrtc->group);

 clk_disable_unprepare(rcrtc->extclock);
 clk_disable_unprepare(rcrtc->clock);

 rcrtc->initialized = 0;
}
