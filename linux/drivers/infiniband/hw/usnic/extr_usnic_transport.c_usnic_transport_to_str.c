
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;







const char *usnic_transport_to_str(enum usnic_transport_type type)
{
 switch (type) {
 case 128:
  return "Unknown";
 case 129:
  return "roce custom";
 case 131:
  return "IPv4 UDP";
 case 130:
  return "Max?";
 default:
  return "Not known";
 }
}
