
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct dce_aux {int dummy; } ;
struct aux_engine_dce110 {int timeout_period; } ;
typedef enum aux_channel_operation_result { ____Placeholder_aux_channel_operation_result } aux_channel_operation_result ;


 int ASSERT_CRITICAL (int) ;
 int AUX_CHANNEL_OPERATION_FAILED_HPD_DISCON ;
 int AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY ;
 int AUX_CHANNEL_OPERATION_FAILED_REASON_UNKNOWN ;
 int AUX_CHANNEL_OPERATION_FAILED_TIMEOUT ;
 int AUX_CHANNEL_OPERATION_SUCCEEDED ;
 int AUX_SW_DONE ;
 int AUX_SW_REPLY_BYTE_COUNT ;
 int AUX_SW_STATUS ;
 int AUX_SW_STATUS__AUX_SW_DONE_MASK ;
 int AUX_SW_STATUS__AUX_SW_HPD_DISCON_MASK ;
 int AUX_SW_STATUS__AUX_SW_RX_INVALID_STOP_MASK ;
 int AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_H_MASK ;
 int AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_L_MASK ;
 int AUX_SW_STATUS__AUX_SW_RX_RECV_NO_DET_MASK ;
 int AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_MASK ;
 int AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_STATE_MASK ;
 struct aux_engine_dce110* FROM_AUX_ENGINE (struct dce_aux*) ;
 int REG_READ (int ) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 scalar_t__ get_reg_field_value (int,int ,int ) ;

__attribute__((used)) static enum aux_channel_operation_result get_channel_status(
 struct dce_aux *engine,
 uint8_t *returned_bytes)
{
 struct aux_engine_dce110 *aux110 = FROM_AUX_ENGINE(engine);

 uint32_t value;

 if (returned_bytes == ((void*)0)) {

  ASSERT_CRITICAL(0);
  return AUX_CHANNEL_OPERATION_FAILED_REASON_UNKNOWN;
 }
 *returned_bytes = 0;


 REG_WAIT(AUX_SW_STATUS, AUX_SW_DONE, 1,
    10, aux110->timeout_period/10);

 value = REG_READ(AUX_SW_STATUS);

 if ((value & AUX_SW_STATUS__AUX_SW_HPD_DISCON_MASK))
  return AUX_CHANNEL_OPERATION_FAILED_HPD_DISCON;
 if (value & AUX_SW_STATUS__AUX_SW_DONE_MASK) {
  if ((value & AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_STATE_MASK) ||
   (value & AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_MASK))
   return AUX_CHANNEL_OPERATION_FAILED_TIMEOUT;

  else if ((value & AUX_SW_STATUS__AUX_SW_RX_INVALID_STOP_MASK) ||
   (value & AUX_SW_STATUS__AUX_SW_RX_RECV_NO_DET_MASK) ||
   (value &
    AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_H_MASK) ||
   (value & AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_L_MASK))
   return AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY;

  *returned_bytes = get_reg_field_value(value,
    AUX_SW_STATUS,
    AUX_SW_REPLY_BYTE_COUNT);

  if (*returned_bytes == 0)
   return
   AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY;
  else {
   *returned_bytes -= 1;
   return AUX_CHANNEL_OPERATION_SUCCEEDED;
  }
 } else {



  ASSERT_CRITICAL(0);
  return AUX_CHANNEL_OPERATION_FAILED_TIMEOUT;
 }
}
