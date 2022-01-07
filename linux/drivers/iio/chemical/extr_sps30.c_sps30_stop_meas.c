
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sps30_state {int dummy; } ;


 int SPS30_STOP_MEAS ;
 int sps30_do_cmd (struct sps30_state*,int ,int *,int ) ;

__attribute__((used)) static void sps30_stop_meas(void *data)
{
 struct sps30_state *state = data;

 sps30_do_cmd(state, SPS30_STOP_MEAS, ((void*)0), 0);
}
