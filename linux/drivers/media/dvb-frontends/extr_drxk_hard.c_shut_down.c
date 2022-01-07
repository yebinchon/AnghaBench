
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxk_state {int dummy; } ;


 int dprintk (int,char*) ;
 int mpegts_stop (struct drxk_state*) ;

__attribute__((used)) static int shut_down(struct drxk_state *state)
{
 dprintk(1, "\n");

 mpegts_stop(state);
 return 0;
}
