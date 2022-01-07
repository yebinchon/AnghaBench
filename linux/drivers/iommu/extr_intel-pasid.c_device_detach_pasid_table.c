
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_table {int dummy; } ;
struct device_domain_info {int table; int * pasid_table; } ;


 int list_del (int *) ;

__attribute__((used)) static inline void
device_detach_pasid_table(struct device_domain_info *info,
     struct pasid_table *pasid_table)
{
 info->pasid_table = ((void*)0);
 list_del(&info->table);
}
