
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_6__ {struct attribute** attrs; } ;
struct fam15h_power_data {TYPE_1__ group; } ;
struct cpuinfo_x86 {int x86; int x86_model; } ;
struct attribute {int dummy; } ;
struct TYPE_10__ {struct attribute attr; } ;
struct TYPE_9__ {struct attribute attr; } ;
struct TYPE_8__ {struct attribute attr; } ;
struct TYPE_7__ {struct attribute attr; } ;


 int ENOMEM ;
 int FAM15H_MIN_NUM_ATTRS ;
 int GFP_KERNEL ;
 int X86_FEATURE_ACC_POWER ;
 struct cpuinfo_x86 boot_cpu_data ;
 scalar_t__ boot_cpu_has (int ) ;
 TYPE_5__ dev_attr_power1_average ;
 TYPE_4__ dev_attr_power1_average_interval ;
 TYPE_3__ dev_attr_power1_crit ;
 TYPE_2__ dev_attr_power1_input ;
 struct attribute** devm_kcalloc (int *,int,int,int ) ;

__attribute__((used)) static int fam15h_power_init_attrs(struct pci_dev *pdev,
       struct fam15h_power_data *data)
{
 int n = FAM15H_MIN_NUM_ATTRS;
 struct attribute **fam15h_power_attrs;
 struct cpuinfo_x86 *c = &boot_cpu_data;

 if (c->x86 == 0x15 &&
     (c->x86_model <= 0xf ||
      (c->x86_model >= 0x60 && c->x86_model <= 0x7f)))
  n += 1;


 if (boot_cpu_has(X86_FEATURE_ACC_POWER))
  n += 2;

 fam15h_power_attrs = devm_kcalloc(&pdev->dev, n,
       sizeof(*fam15h_power_attrs),
       GFP_KERNEL);

 if (!fam15h_power_attrs)
  return -ENOMEM;

 n = 0;
 fam15h_power_attrs[n++] = &dev_attr_power1_crit.attr;
 if (c->x86 == 0x15 &&
     (c->x86_model <= 0xf ||
      (c->x86_model >= 0x60 && c->x86_model <= 0x7f)))
  fam15h_power_attrs[n++] = &dev_attr_power1_input.attr;

 if (boot_cpu_has(X86_FEATURE_ACC_POWER)) {
  fam15h_power_attrs[n++] = &dev_attr_power1_average.attr;
  fam15h_power_attrs[n++] = &dev_attr_power1_average_interval.attr;
 }

 data->group.attrs = fam15h_power_attrs;

 return 0;
}
