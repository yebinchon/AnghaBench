
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct fm801_gp {int res_port; int gameport; } ;


 int gameport_unregister_port (int ) ;
 int kfree (struct fm801_gp*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct fm801_gp* pci_get_drvdata (struct pci_dev*) ;
 int release_resource (int ) ;

__attribute__((used)) static void fm801_gp_remove(struct pci_dev *pci)
{
 struct fm801_gp *gp = pci_get_drvdata(pci);

 gameport_unregister_port(gp->gameport);
 release_resource(gp->res_port);
 kfree(gp);

 pci_disable_device(pci);
}
