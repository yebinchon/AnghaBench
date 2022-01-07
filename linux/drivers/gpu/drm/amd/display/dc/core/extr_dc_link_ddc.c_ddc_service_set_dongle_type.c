
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {int dongle_type; } ;
typedef enum display_dongle_type { ____Placeholder_display_dongle_type } display_dongle_type ;



void ddc_service_set_dongle_type(struct ddc_service *ddc,
  enum display_dongle_type dongle_type)
{
 ddc->dongle_type = dongle_type;
}
