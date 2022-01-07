
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {struct ddc* ddc_pin; } ;
struct ddc {int dummy; } ;



void dal_ddc_service_set_ddc_pin(
 struct ddc_service *ddc_service,
 struct ddc *ddc)
{
 ddc_service->ddc_pin = ddc;
}
