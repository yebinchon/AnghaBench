
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_crtc {int initialized; int clock; int extclock; int group; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int rcar_du_crtc_setup (struct rcar_du_crtc*) ;
 int rcar_du_group_get (int ) ;

__attribute__((used)) static int rcar_du_crtc_get(struct rcar_du_crtc *rcrtc)
{
 int ret;





 if (rcrtc->initialized)
  return 0;

 ret = clk_prepare_enable(rcrtc->clock);
 if (ret < 0)
  return ret;

 ret = clk_prepare_enable(rcrtc->extclock);
 if (ret < 0)
  goto error_clock;

 ret = rcar_du_group_get(rcrtc->group);
 if (ret < 0)
  goto error_group;

 rcar_du_crtc_setup(rcrtc);
 rcrtc->initialized = 1;

 return 0;

error_group:
 clk_disable_unprepare(rcrtc->extclock);
error_clock:
 clk_disable_unprepare(rcrtc->clock);
 return ret;
}
