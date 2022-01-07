
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {int dummy; } ;
typedef enum ddc_service_type { ____Placeholder_ddc_service_type } ddc_service_type ;


 int DDC_SERVICE_TYPE_CONNECTOR ;

enum ddc_service_type dal_ddc_service_get_type(struct ddc_service *ddc)
{
 return DDC_SERVICE_TYPE_CONNECTOR;
}
