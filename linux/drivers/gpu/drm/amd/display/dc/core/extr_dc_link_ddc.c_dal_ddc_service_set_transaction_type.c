
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {int transaction_type; } ;
typedef enum ddc_transaction_type { ____Placeholder_ddc_transaction_type } ddc_transaction_type ;



void dal_ddc_service_set_transaction_type(
 struct ddc_service *ddc,
 enum ddc_transaction_type type)
{
 ddc->transaction_type = type;
}
