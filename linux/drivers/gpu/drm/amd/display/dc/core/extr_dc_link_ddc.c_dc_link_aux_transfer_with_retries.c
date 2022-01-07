
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {int dummy; } ;
struct aux_payload {int dummy; } ;


 int dce_aux_transfer_with_retries (struct ddc_service*,struct aux_payload*) ;

bool dc_link_aux_transfer_with_retries(struct ddc_service *ddc,
  struct aux_payload *payload)
{
 return dce_aux_transfer_with_retries(ddc, payload);
}
