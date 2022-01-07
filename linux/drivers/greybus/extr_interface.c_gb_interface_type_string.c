
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {size_t type; } ;
__attribute__((used)) static const char *gb_interface_type_string(struct gb_interface *intf)
{
 static const char * const types[] = {
  [130] = "invalid",
  [128] = "unknown",
  [132] = "dummy",
  [129] = "unipro",
  [131] = "greybus",
 };

 return types[intf->type];
}
