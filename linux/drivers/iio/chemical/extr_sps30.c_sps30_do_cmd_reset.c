
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sps30_state {int state; } ;


 int RESET ;
 int SPS30_RESET ;
 int SPS30_STOP_MEAS ;
 int msleep (int) ;
 int sps30_do_cmd (struct sps30_state*,int ,int *,int ) ;

__attribute__((used)) static int sps30_do_cmd_reset(struct sps30_state *state)
{
 int ret;

 ret = sps30_do_cmd(state, SPS30_RESET, ((void*)0), 0);
 msleep(300);






 sps30_do_cmd(state, SPS30_STOP_MEAS, ((void*)0), 0);
 state->state = RESET;

 return ret;
}
