
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_table {int dev; } ;
struct device_domain_info {int table; struct pasid_table* pasid_table; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static inline void
device_attach_pasid_table(struct device_domain_info *info,
     struct pasid_table *pasid_table)
{
 info->pasid_table = pasid_table;
 list_add(&info->table, &pasid_table->dev);
}
