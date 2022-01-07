
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {char* name; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t iommu_group_show_name(struct iommu_group *group, char *buf)
{
 return sprintf(buf, "%s\n", group->name);
}
