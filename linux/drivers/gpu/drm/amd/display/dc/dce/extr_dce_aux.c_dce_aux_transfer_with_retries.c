
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ddc_service {int dummy; } ;
struct aux_payload {int length; int * reply; int write; } ;
typedef enum aux_channel_operation_result { ____Placeholder_aux_channel_operation_result } aux_channel_operation_result ;







 int AUX_MAX_DEFER_RETRIES ;
 int AUX_MAX_I2C_DEFER_RETRIES ;
 int AUX_MAX_INVALID_REPLY_RETRIES ;
 int AUX_MAX_RETRIES ;
 int AUX_MAX_TIMEOUT_RETRIES ;







 int dce_aux_transfer_raw (struct ddc_service*,struct aux_payload*,int*) ;
 int udelay (int) ;

bool dce_aux_transfer_with_retries(struct ddc_service *ddc,
  struct aux_payload *payload)
{
 int i, ret = 0;
 uint8_t reply;
 bool payload_reply = 1;
 enum aux_channel_operation_result operation_result;
 int aux_ack_retries = 0,
  aux_defer_retries = 0,
  aux_i2c_defer_retries = 0,
  aux_timeout_retries = 0,
  aux_invalid_reply_retries = 0;

 if (!payload->reply) {
  payload_reply = 0;
  payload->reply = &reply;
 }

 for (i = 0; i < AUX_MAX_RETRIES; i++) {
  ret = dce_aux_transfer_raw(ddc, payload, &operation_result);
  switch (operation_result) {
  case 135:
   aux_timeout_retries = 0;
   aux_invalid_reply_retries = 0;

   switch (*payload->reply) {
   case 134:
    if (!payload->write && payload->length != ret) {
     if (++aux_ack_retries >= AUX_MAX_RETRIES)
      goto fail;
     else
      udelay(300);
    } else
     return 1;
   break;

   case 133:
   case 128:
   case 129:
    if (++aux_defer_retries >= AUX_MAX_DEFER_RETRIES)
     goto fail;
    break;

   case 130:
    aux_defer_retries = 0;
    if (++aux_i2c_defer_retries >= AUX_MAX_I2C_DEFER_RETRIES)
     goto fail;
    break;

   case 132:
   case 131:
   default:
    goto fail;
   }
   break;

  case 138:
   if (++aux_invalid_reply_retries >= AUX_MAX_INVALID_REPLY_RETRIES)
    goto fail;
   else
    udelay(400);
   break;

  case 136:
   if (++aux_timeout_retries >= AUX_MAX_TIMEOUT_RETRIES)
    goto fail;
   else {






   }
   break;

  case 139:
  case 137:
  default:
   goto fail;
  }
 }

fail:
 if (!payload_reply)
  payload->reply = ((void*)0);
 return 0;
}
