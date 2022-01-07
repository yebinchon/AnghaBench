
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxk_state {int dummy; } ;


 int dprintk (int,char*) ;
 int mpegts_configure_pins (struct drxk_state*,int) ;

__attribute__((used)) static int mpegts_disable(struct drxk_state *state)
{
 dprintk(1, "\n");

 return mpegts_configure_pins(state, 0);
}
