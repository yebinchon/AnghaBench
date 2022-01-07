
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {struct ddc* ddc_pin; } ;
struct ddc {int dummy; } ;



struct ddc *dal_ddc_service_get_ddc_pin(struct ddc_service *ddc_service)
{
 return ddc_service->ddc_pin;
}
