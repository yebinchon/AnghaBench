
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int int_m2; } ;
struct hfc_pci {TYPE_1__ hw; } ;


 int HFCPCI_INT_M2 ;
 scalar_t__ HFCPCI_IRQ_ENABLE ;
 int Write_hfc (struct hfc_pci*,int ,int ) ;

__attribute__((used)) static void
disable_hwirq(struct hfc_pci *hc)
{
 hc->hw.int_m2 &= ~((u_char)HFCPCI_IRQ_ENABLE);
 Write_hfc(hc, HFCPCI_INT_M2, hc->hw.int_m2);
}
