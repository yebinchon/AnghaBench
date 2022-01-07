
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int inversion_val; int inversion; } ;
struct cx24120_state {TYPE_2__ dnxt; TYPE_1__* i2c; } ;
typedef enum fe_spectral_inversion { ____Placeholder_fe_spectral_inversion } fe_spectral_inversion ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;



 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int cx24120_set_inversion(struct cx24120_state *state,
     enum fe_spectral_inversion inversion)
{
 dev_dbg(&state->i2c->dev, "(%d)\n", inversion);

 switch (inversion) {
 case 129:
  state->dnxt.inversion_val = 0x00;
  break;
 case 128:
  state->dnxt.inversion_val = 0x04;
  break;
 case 130:
  state->dnxt.inversion_val = 0x0c;
  break;
 default:
  return -EINVAL;
 }

 state->dnxt.inversion = inversion;

 return 0;
}
