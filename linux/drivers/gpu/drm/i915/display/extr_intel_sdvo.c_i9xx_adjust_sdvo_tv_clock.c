
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpll {int p1; int p2; int n; int m1; int m2; } ;
struct intel_crtc_state {unsigned int port_clock; int clock_set; struct dpll dpll; } ;


 int WARN (int,char*,unsigned int) ;

__attribute__((used)) static void i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
{
 unsigned dotclock = pipe_config->port_clock;
 struct dpll *clock = &pipe_config->dpll;





 if (dotclock >= 100000 && dotclock < 140500) {
  clock->p1 = 2;
  clock->p2 = 10;
  clock->n = 3;
  clock->m1 = 16;
  clock->m2 = 8;
 } else if (dotclock >= 140500 && dotclock <= 200000) {
  clock->p1 = 1;
  clock->p2 = 10;
  clock->n = 6;
  clock->m1 = 12;
  clock->m2 = 8;
 } else {
  WARN(1, "SDVO TV clock out of range: %i\n", dotclock);
 }

 pipe_config->clock_set = 1;
}
