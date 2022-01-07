
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int bus; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENXIO ;
 scalar_t__ cpu_to_node (unsigned int) ;
 scalar_t__ pcibus_to_node (int ) ;
 int qib_count_units (int*,int*) ;
 struct qib_devdata* qib_lookup (int) ;

__attribute__((used)) static int find_hca(unsigned int cpu, int *unit)
{
 int ret = 0, devmax, npresent, nup, ndev;

 *unit = -1;

 devmax = qib_count_units(&npresent, &nup);
 if (!npresent) {
  ret = -ENXIO;
  goto done;
 }
 if (!nup) {
  ret = -ENETDOWN;
  goto done;
 }
 for (ndev = 0; ndev < devmax; ndev++) {
  struct qib_devdata *dd = qib_lookup(ndev);

  if (dd) {
   if (pcibus_to_node(dd->pcidev->bus) < 0) {
    ret = -EINVAL;
    goto done;
   }
   if (cpu_to_node(cpu) ==
    pcibus_to_node(dd->pcidev->bus)) {
    *unit = ndev;
    goto done;
   }
  }
 }
done:
 return ret;
}
