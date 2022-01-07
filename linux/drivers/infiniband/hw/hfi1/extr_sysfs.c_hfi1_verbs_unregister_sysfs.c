
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int sc2vl_kobj; int sl2sc_kobj; int vl2mtu_kobj; int pport_cc_kobj; } ;
struct hfi1_devdata {int num_pports; struct hfi1_pportdata* pport; } ;


 int cc_setting_bin_attr ;
 int cc_table_bin_attr ;
 int kobject_put (int *) ;
 int sysfs_remove_bin_file (int *,int *) ;

void hfi1_verbs_unregister_sysfs(struct hfi1_devdata *dd)
{
 struct hfi1_pportdata *ppd;
 int i;

 for (i = 0; i < dd->num_pports; i++) {
  ppd = &dd->pport[i];

  sysfs_remove_bin_file(&ppd->pport_cc_kobj,
          &cc_setting_bin_attr);
  sysfs_remove_bin_file(&ppd->pport_cc_kobj,
          &cc_table_bin_attr);
  kobject_put(&ppd->pport_cc_kobj);
  kobject_put(&ppd->vl2mtu_kobj);
  kobject_put(&ppd->sl2sc_kobj);
  kobject_put(&ppd->sc2vl_kobj);
 }
}
