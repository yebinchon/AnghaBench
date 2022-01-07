
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;





 int WARN_ON (int) ;

__attribute__((used)) static int dss_get_channel_index(enum omap_channel channel)
{
 switch (channel) {
 case 130:
  return 0;
 case 129:
  return 1;
 case 128:
  return 2;
 default:
  WARN_ON(1);
  return 0;
 }
}
