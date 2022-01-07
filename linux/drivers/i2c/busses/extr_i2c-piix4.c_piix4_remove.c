
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int piix4_adap_remove (int *) ;
 int piix4_adapter_count ;
 int * piix4_aux_adapter ;
 int ** piix4_main_adapters ;

__attribute__((used)) static void piix4_remove(struct pci_dev *dev)
{
 int port = piix4_adapter_count;

 while (--port >= 0) {
  if (piix4_main_adapters[port]) {
   piix4_adap_remove(piix4_main_adapters[port]);
   piix4_main_adapters[port] = ((void*)0);
  }
 }

 if (piix4_aux_adapter) {
  piix4_adap_remove(piix4_aux_adapter);
  piix4_aux_adapter = ((void*)0);
 }
}
