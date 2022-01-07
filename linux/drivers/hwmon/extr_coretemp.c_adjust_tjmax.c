
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tjmax_model {scalar_t__ device; int tjmax; scalar_t__ model; scalar_t__ mask; int id; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;
struct device {int dummy; } ;
struct cpuinfo_x86 {scalar_t__ x86_model; scalar_t__ x86_stepping; int x86_model_id; } ;


 scalar_t__ ANY ;
 int ARRAY_SIZE (struct tjmax_model*) ;
 int PCI_DEVFN (int ,int ) ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int dev_warn (struct device*,char*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;
 int rdmsr_safe_on_cpu (int,int,int*,int*) ;
 scalar_t__ strstr (int ,int ) ;
 struct tjmax_model* tjmax_model_table ;
 struct tjmax_model* tjmax_pci_table ;
 struct tjmax_model* tjmax_table ;

__attribute__((used)) static int adjust_tjmax(struct cpuinfo_x86 *c, u32 id, struct device *dev)
{


 int tjmax = 100000;
 int tjmax_ee = 85000;
 int usemsr_ee = 1;
 int err;
 u32 eax, edx;
 int i;
 u16 devfn = PCI_DEVFN(0, 0);
 struct pci_dev *host_bridge = pci_get_domain_bus_and_slot(0, 0, devfn);






 if (host_bridge && host_bridge->vendor == PCI_VENDOR_ID_INTEL) {
  for (i = 0; i < ARRAY_SIZE(tjmax_pci_table); i++) {
   if (host_bridge->device == tjmax_pci_table[i].device)
    return tjmax_pci_table[i].tjmax;
  }
 }

 for (i = 0; i < ARRAY_SIZE(tjmax_table); i++) {
  if (strstr(c->x86_model_id, tjmax_table[i].id))
   return tjmax_table[i].tjmax;
 }

 for (i = 0; i < ARRAY_SIZE(tjmax_model_table); i++) {
  const struct tjmax_model *tm = &tjmax_model_table[i];
  if (c->x86_model == tm->model &&
      (tm->mask == ANY || c->x86_stepping == tm->mask))
   return tm->tjmax;
 }



 if (c->x86_model == 0xf && c->x86_stepping < 4)
  usemsr_ee = 0;

 if (c->x86_model > 0xe && usemsr_ee) {
  u8 platform_id;






  err = rdmsr_safe_on_cpu(id, 0x17, &eax, &edx);
  if (err) {
   dev_warn(dev,
     "Unable to access MSR 0x17, assuming desktop"
     " CPU\n");
   usemsr_ee = 0;
  } else if (c->x86_model < 0x17 && !(eax & 0x10000000)) {





   usemsr_ee = 0;
  } else {

   platform_id = (edx >> 18) & 0x7;





   if (c->x86_model == 0x17 &&
       (platform_id == 5 || platform_id == 7)) {




    tjmax_ee = 90000;
    tjmax = 105000;
   }
  }
 }

 if (usemsr_ee) {
  err = rdmsr_safe_on_cpu(id, 0xee, &eax, &edx);
  if (err) {
   dev_warn(dev,
     "Unable to access MSR 0xEE, for Tjmax, left"
     " at default\n");
  } else if (eax & 0x40000000) {
   tjmax = tjmax_ee;
  }
 } else if (tjmax == 100000) {




  dev_warn(dev, "Using relative temperature scale!\n");
 }

 return tjmax;
}
