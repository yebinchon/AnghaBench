
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ delsys; void* pilot_val; } ;
struct cx24120_state {TYPE_2__ dnxt; TYPE_1__* i2c; } ;
typedef enum fe_pilot { ____Placeholder_fe_pilot } fe_pilot ;
struct TYPE_3__ {int dev; } ;


 void* CX24120_PILOT_AUTO ;
 void* CX24120_PILOT_OFF ;
 void* CX24120_PILOT_ON ;



 scalar_t__ SYS_DVBS2 ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int cx24120_set_pilot(struct cx24120_state *state, enum fe_pilot pilot)
{
 dev_dbg(&state->i2c->dev, "(%d)\n", pilot);


 if (state->dnxt.delsys != SYS_DVBS2) {
  state->dnxt.pilot_val = CX24120_PILOT_OFF;
  return 0;
 }

 switch (pilot) {
 case 129:
  state->dnxt.pilot_val = CX24120_PILOT_OFF;
  break;
 case 128:
  state->dnxt.pilot_val = CX24120_PILOT_ON;
  break;
 case 130:
 default:
  state->dnxt.pilot_val = CX24120_PILOT_AUTO;
 }

 return 0;
}
