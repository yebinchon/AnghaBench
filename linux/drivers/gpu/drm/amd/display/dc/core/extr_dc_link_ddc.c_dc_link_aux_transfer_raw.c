
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {int dummy; } ;
struct aux_payload {int dummy; } ;
typedef enum aux_channel_operation_result { ____Placeholder_aux_channel_operation_result } aux_channel_operation_result ;


 int dce_aux_transfer_raw (struct ddc_service*,struct aux_payload*,int*) ;

int dc_link_aux_transfer_raw(struct ddc_service *ddc,
  struct aux_payload *payload,
  enum aux_channel_operation_result *operation_result)
{
 return dce_aux_transfer_raw(ddc, payload, operation_result);
}
