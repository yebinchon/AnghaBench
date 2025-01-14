
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fec; scalar_t__ delsys; int fec_mask; int fec_val; } ;
struct cx24120_state {TYPE_2__ dnxt; TYPE_1__* i2c; } ;
typedef enum fe_modulation { ____Placeholder_fe_modulation } fe_modulation ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;
struct TYPE_7__ {scalar_t__ delsys; int mod; int fec; int val; } ;
struct TYPE_5__ {int dev; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 scalar_t__ SYS_DVBS2 ;
 int dev_dbg (int *,char*,int,int) ;
 TYPE_3__* modfec_table ;

__attribute__((used)) static int cx24120_set_fec(struct cx24120_state *state, enum fe_modulation mod,
      enum fe_code_rate fec)
{
 int idx;

 dev_dbg(&state->i2c->dev, "(0x%02x,0x%02x)\n", mod, fec);

 state->dnxt.fec = fec;


 for (idx = 0; idx < ARRAY_SIZE(modfec_table); idx++) {
  if (modfec_table[idx].delsys != state->dnxt.delsys)
   continue;
  if (modfec_table[idx].mod != mod)
   continue;
  if (modfec_table[idx].fec != fec)
   continue;


  state->dnxt.fec_mask = 0x00;
  state->dnxt.fec_val = modfec_table[idx].val;
  return 0;
 }

 if (state->dnxt.delsys == SYS_DVBS2) {

  state->dnxt.fec_mask = 0x00;
  state->dnxt.fec_val = 0x00;
 } else {

  state->dnxt.fec_val = 0x2e;
  state->dnxt.fec_mask = 0xac;
 }

 return 0;
}
