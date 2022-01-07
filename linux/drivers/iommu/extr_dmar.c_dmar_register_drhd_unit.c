
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_drhd_unit {int list; scalar_t__ include_all; } ;


 int dmar_drhd_units ;
 int list_add_rcu (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;

__attribute__((used)) static void dmar_register_drhd_unit(struct dmar_drhd_unit *drhd)
{




 if (drhd->include_all)
  list_add_tail_rcu(&drhd->list, &dmar_drhd_units);
 else
  list_add_rcu(&drhd->list, &dmar_drhd_units);
}
