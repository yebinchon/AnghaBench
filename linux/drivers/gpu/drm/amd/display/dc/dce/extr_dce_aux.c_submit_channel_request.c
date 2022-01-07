
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct dce_aux {TYPE_2__* ddc; } ;
struct aux_request_transaction_data {scalar_t__ type; scalar_t__ action; size_t length; size_t* data; int address; int delay; } ;
struct aux_engine_dce110 {int timeout_period; } ;
struct TYPE_4__ {TYPE_1__* pin_data; } ;
struct TYPE_3__ {int en; } ;


 int AUXN_CALOUT_ERROR_AK ;
 int AUXN_IMPCAL ;
 int AUXN_IMPCAL_ENABLE ;
 int AUXN_IMPCAL_OVERRIDE_ENABLE ;
 int AUXP_CALOUT_ERROR_AK ;
 int AUXP_IMPCAL ;
 int AUXP_IMPCAL_OVERRIDE_ENABLE ;
 int AUX_INTERRUPT_CONTROL ;
 int AUX_SW_AUTOINCREMENT_DISABLE ;
 int AUX_SW_CONTROL ;
 int AUX_SW_DATA ;
 int AUX_SW_DATA_RW ;
 int AUX_SW_DONE ;
 int AUX_SW_DONE_ACK ;
 int AUX_SW_GO ;
 int AUX_SW_INDEX ;
 int AUX_SW_START_DELAY ;
 int AUX_SW_STATUS ;
 int AUX_SW_WR_BYTES ;
 scalar_t__ AUX_TRANSACTION_TYPE_DP ;
 scalar_t__ AUX_TRANSACTION_TYPE_I2C ;
 size_t COMPOSE_AUX_SW_DATA_0_7 (int ) ;
 int COMPOSE_AUX_SW_DATA_16_20 (scalar_t__,int ) ;
 int COMPOSE_AUX_SW_DATA_8_15 (int ) ;
 int EVENT_LOG_AUX_ORIGIN_NATIVE ;
 int EVENT_LOG_AUX_REQ (int ,int ,scalar_t__,int ,size_t,size_t*) ;
 struct aux_engine_dce110* FROM_AUX_ENGINE (struct dce_aux*) ;
 scalar_t__ I2CAUX_TRANSACTION_ACTION_DP_WRITE ;
 scalar_t__ I2CAUX_TRANSACTION_ACTION_I2C_WRITE ;
 scalar_t__ I2CAUX_TRANSACTION_ACTION_I2C_WRITE_MOT ;
 scalar_t__ REG (int ) ;
 size_t REG_SET (int ,size_t,int ,size_t) ;
 size_t REG_SET_2 (int ,size_t,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,size_t) ;
 size_t REG_UPDATE_4 (int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int REG_UPDATE_SEQ_2 (int ,int ,int,int ,int ) ;
 int REG_WAIT (int ,int ,int ,int,int) ;

__attribute__((used)) static void submit_channel_request(
 struct dce_aux *engine,
 struct aux_request_transaction_data *request)
{
 struct aux_engine_dce110 *aux110 = FROM_AUX_ENGINE(engine);
 uint32_t value;
 uint32_t length;

 bool is_write =
  ((request->type == AUX_TRANSACTION_TYPE_DP) &&
   (request->action == I2CAUX_TRANSACTION_ACTION_DP_WRITE)) ||
  ((request->type == AUX_TRANSACTION_TYPE_I2C) &&
  ((request->action == I2CAUX_TRANSACTION_ACTION_I2C_WRITE) ||
   (request->action == I2CAUX_TRANSACTION_ACTION_I2C_WRITE_MOT)));
 if (REG(AUXN_IMPCAL)) {

  REG_UPDATE_SEQ_2(AUXN_IMPCAL,
    AUXN_CALOUT_ERROR_AK, 1,
    AUXN_CALOUT_ERROR_AK, 0);

  REG_UPDATE_SEQ_2(AUXP_IMPCAL,
    AUXP_CALOUT_ERROR_AK, 1,
    AUXP_CALOUT_ERROR_AK, 0);


  REG_UPDATE_SEQ_2(AUXN_IMPCAL,
    AUXN_IMPCAL_ENABLE, 1,
    AUXN_IMPCAL_OVERRIDE_ENABLE, 0);



  REG_UPDATE_SEQ_2(AUXP_IMPCAL,
    AUXP_IMPCAL_OVERRIDE_ENABLE, 1,
    AUXP_IMPCAL_OVERRIDE_ENABLE, 0);
 }

 REG_UPDATE(AUX_INTERRUPT_CONTROL, AUX_SW_DONE_ACK, 1);

 REG_WAIT(AUX_SW_STATUS, AUX_SW_DONE, 0,
    10, aux110->timeout_period/10);
 length = request->length ? 4 : 3;
 if (is_write)
  length += request->length;

 REG_UPDATE_2(AUX_SW_CONTROL,
   AUX_SW_START_DELAY, request->delay,
   AUX_SW_WR_BYTES, length);


 value = REG_UPDATE_4(AUX_SW_DATA,
   AUX_SW_INDEX, 0,
   AUX_SW_DATA_RW, 0,
   AUX_SW_AUTOINCREMENT_DISABLE, 1,
   AUX_SW_DATA, COMPOSE_AUX_SW_DATA_16_20(request->action, request->address));

 value = REG_SET_2(AUX_SW_DATA, value,
   AUX_SW_AUTOINCREMENT_DISABLE, 0,
   AUX_SW_DATA, COMPOSE_AUX_SW_DATA_8_15(request->address));

 value = REG_SET(AUX_SW_DATA, value,
   AUX_SW_DATA, COMPOSE_AUX_SW_DATA_0_7(request->address));

 if (request->length) {
  value = REG_SET(AUX_SW_DATA, value,
    AUX_SW_DATA, request->length - 1);
 }

 if (is_write) {





  uint32_t i = 0;

  while (i < request->length) {
   value = REG_SET(AUX_SW_DATA, value,
     AUX_SW_DATA, request->data[i]);

   ++i;
  }
 }

 REG_UPDATE(AUX_SW_CONTROL, AUX_SW_GO, 1);
 EVENT_LOG_AUX_REQ(engine->ddc->pin_data->en, EVENT_LOG_AUX_ORIGIN_NATIVE,
     request->action, request->address, request->length, request->data);
}
