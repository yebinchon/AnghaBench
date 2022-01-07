
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service_init_data {int dummy; } ;
struct ddc_service {int dummy; } ;


 int GFP_KERNEL ;
 int construct (struct ddc_service*,struct ddc_service_init_data*) ;
 struct ddc_service* kzalloc (int,int ) ;

struct ddc_service *dal_ddc_service_create(
 struct ddc_service_init_data *init_data)
{
 struct ddc_service *ddc_service;

 ddc_service = kzalloc(sizeof(struct ddc_service), GFP_KERNEL);

 if (!ddc_service)
  return ((void*)0);

 construct(ddc_service, init_data);
 return ddc_service;
}
