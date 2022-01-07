
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {int inst; TYPE_1__* ctx; } ;
struct optc {int dummy; } ;
struct TYPE_2__ {scalar_t__ dce_environment; } ;


 scalar_t__ DCE_ENV_FPGA_MAXIMUS ;
 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_CONTROL ;
 int OTG_GLOBAL_CONTROL0 ;
 int OTG_MASTER_UPDATE_LOCK ;
 int OTG_MASTER_UPDATE_LOCK_SEL ;
 int REG_READ (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 int UPDATE_LOCK_STATUS ;

void optc1_lock(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t regval = 0;

 regval = REG_READ(OTG_CONTROL);


 if ((regval & 0x1) == 0x0)
  return;

 REG_SET(OTG_GLOBAL_CONTROL0, 0,
   OTG_MASTER_UPDATE_LOCK_SEL, optc->inst);
 REG_SET(OTG_MASTER_UPDATE_LOCK, 0,
   OTG_MASTER_UPDATE_LOCK, 1);


 if (optc->ctx->dce_environment != DCE_ENV_FPGA_MAXIMUS) {

  REG_WAIT(OTG_MASTER_UPDATE_LOCK,
    UPDATE_LOCK_STATUS, 1,
    1, 10);
 }
}
