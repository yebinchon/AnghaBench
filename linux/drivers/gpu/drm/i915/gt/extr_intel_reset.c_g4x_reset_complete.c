
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int GRDOM_RESET_ENABLE ;
 int I915_GDRST ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;

__attribute__((used)) static bool g4x_reset_complete(struct pci_dev *pdev)
{
 u8 gdrst;

 pci_read_config_byte(pdev, I915_GDRST, &gdrst);
 return (gdrst & GRDOM_RESET_ENABLE) == 0;
}
