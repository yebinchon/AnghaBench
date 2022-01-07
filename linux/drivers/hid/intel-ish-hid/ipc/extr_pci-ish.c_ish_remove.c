
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ishtp_device {int dummy; } ;


 int ish_device_disable (struct ishtp_device*) ;
 int ishtp_bus_remove_all_clients (struct ishtp_device*,int) ;
 struct ishtp_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void ish_remove(struct pci_dev *pdev)
{
 struct ishtp_device *ishtp_dev = pci_get_drvdata(pdev);

 ishtp_bus_remove_all_clients(ishtp_dev, 0);
 ish_device_disable(ishtp_dev);
}
