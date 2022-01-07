
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int state; } ;
typedef enum sii9234_state { ____Placeholder_sii9234_state } sii9234_state ;


 int CBUS_MSC_REQ_ABORT_REASON_REG ;
 int SET_HPD_DOWNSTREAM ;
 int ST_FAILURE ;
 int cbus_readb (struct sii9234*,int ) ;
 scalar_t__ sii9234_clear_error (struct sii9234*) ;
 int sii9234_tmds_control (struct sii9234*,int) ;

__attribute__((used)) static enum sii9234_state sii9234_hpd_change(struct sii9234 *ctx)
{
 int value;

 value = cbus_readb(ctx, CBUS_MSC_REQ_ABORT_REASON_REG);
 if (sii9234_clear_error(ctx))
  return ST_FAILURE;

 if (value & SET_HPD_DOWNSTREAM) {

  sii9234_tmds_control(ctx, 1);
 } else {

  sii9234_tmds_control(ctx, 0);
 }

 return ctx->state;
}
