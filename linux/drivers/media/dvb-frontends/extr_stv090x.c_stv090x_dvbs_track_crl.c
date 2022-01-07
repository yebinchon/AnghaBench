
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stv090x_state {int srate; TYPE_1__* internal; } ;
struct TYPE_2__ {int dev_ver; } ;


 int ACLC ;
 int BCLC ;
 int FE_ERROR ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*) ;

__attribute__((used)) static int stv090x_dvbs_track_crl(struct stv090x_state *state)
{
 if (state->internal->dev_ver >= 0x30) {

  if (state->srate >= 15000000) {
   if (STV090x_WRITE_DEMOD(state, ACLC, 0x2b) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, BCLC, 0x1a) < 0)
    goto err;
  } else if ((state->srate >= 7000000) && (15000000 > state->srate)) {
   if (STV090x_WRITE_DEMOD(state, ACLC, 0x0c) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, BCLC, 0x1b) < 0)
    goto err;
  } else if (state->srate < 7000000) {
   if (STV090x_WRITE_DEMOD(state, ACLC, 0x2c) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, BCLC, 0x1c) < 0)
    goto err;
  }

 } else {

  if (STV090x_WRITE_DEMOD(state, ACLC, 0x1a) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, BCLC, 0x09) < 0)
   goto err;
 }
 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
