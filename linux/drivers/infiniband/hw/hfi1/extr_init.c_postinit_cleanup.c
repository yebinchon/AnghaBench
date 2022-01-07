
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int pcidev; } ;


 int cleanup_device_data (struct hfi1_devdata*) ;
 int hfi1_comp_vectors_clean_up (struct hfi1_devdata*) ;
 int hfi1_dev_affinity_clean_up (struct hfi1_devdata*) ;
 int hfi1_free_devdata (struct hfi1_devdata*) ;
 int hfi1_pcie_cleanup (int ) ;
 int hfi1_pcie_ddcleanup (struct hfi1_devdata*) ;
 int hfi1_start_cleanup (struct hfi1_devdata*) ;

__attribute__((used)) static void postinit_cleanup(struct hfi1_devdata *dd)
{
 hfi1_start_cleanup(dd);
 hfi1_comp_vectors_clean_up(dd);
 hfi1_dev_affinity_clean_up(dd);

 hfi1_pcie_ddcleanup(dd);
 hfi1_pcie_cleanup(dd->pcidev);

 cleanup_device_data(dd);

 hfi1_free_devdata(dd);
}
