
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_m2; } ;
struct hfc_pci {TYPE_1__ hw; } ;


 int HFCPCI_INT_M2 ;
 int HFCPCI_IRQ_ENABLE ;
 int Write_hfc (struct hfc_pci*,int ,int ) ;

__attribute__((used)) static void
enable_hwirq(struct hfc_pci *hc)
{
 hc->hw.int_m2 |= HFCPCI_IRQ_ENABLE;
 Write_hfc(hc, HFCPCI_INT_M2, hc->hw.int_m2);
}
