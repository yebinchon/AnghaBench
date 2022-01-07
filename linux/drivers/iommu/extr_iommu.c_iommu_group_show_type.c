
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_group {TYPE_1__* default_domain; } ;
typedef int ssize_t ;
struct TYPE_2__ {int type; } ;






 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t iommu_group_show_type(struct iommu_group *group,
         char *buf)
{
 char *type = "unknown\n";

 if (group->default_domain) {
  switch (group->default_domain->type) {
  case 131:
   type = "blocked\n";
   break;
  case 129:
   type = "identity\n";
   break;
  case 128:
   type = "unmanaged\n";
   break;
  case 130:
   type = "DMA\n";
   break;
  }
 }
 strcpy(buf, type);

 return strlen(type);
}
