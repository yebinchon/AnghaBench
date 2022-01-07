
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int end; int start; } ;
struct device_node {int dummy; } ;


 int IORESOURCE_MEM ;
 scalar_t__ of_node_is_type (struct device_node*,char*) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;

__attribute__((used)) static int macio_resource_quirks(struct device_node *np, struct resource *res,
     int index)
{

 if ((res->flags & IORESOURCE_MEM) == 0)
  return 0;


 if (index == 0 && of_node_name_eq(np, "gc"))
  res->end = res->start + 0x1ffff;


 if (index >= 2 && of_node_name_eq(np, "radio"))
  return 1;



 if ((res->start & 0x0001f000) == 0x00008000)
  res->end = res->start + 0xff;






 if (of_node_name_eq(np, "escc"))
  return 1;


 if (index >= 3 && (of_node_name_eq(np, "ch-a") ||
      of_node_name_eq(np, "ch-b")))
  return 1;


 if (index > 0 && of_node_name_eq(np, "media-bay"))
  return 1;


 if (of_node_name_eq(np, "IDE") || of_node_name_eq(np, "ATA") ||
     of_node_is_type(np, "ide") || of_node_is_type(np, "ata")) {
  if (index == 0 && (res->end - res->start) > 0xfff)
   res->end = res->start + 0xfff;
  if (index == 1 && (res->end - res->start) > 0xff)
   res->end = res->start + 0xff;
 }
 return 0;
}
