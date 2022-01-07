
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int chipset; } ;
typedef TYPE_1__ ide_hwif_t ;
 int seq_printf (struct seq_file*,char*,char const*) ;

__attribute__((used)) static int ide_imodel_proc_show(struct seq_file *m, void *v)
{
 ide_hwif_t *hwif = (ide_hwif_t *) m->private;
 const char *name;

 switch (hwif->chipset) {
 case 134: name = "generic"; break;
 case 131: name = "pci"; break;
 case 136: name = "cmd640"; break;
 case 135: name = "dtc2278"; break;
 case 138: name = "ali14xx"; break;
 case 129: name = "qd65xx"; break;
 case 128: name = "umc8672"; break;
 case 133: name = "ht6560b"; break;
 case 140: name = "4drives"; break;
 case 130: name = "mac-io"; break;
 case 137: name = "au1xxx"; break;
 case 132: name = "palm3710"; break;
 case 139: name = "acorn"; break;
 default: name = "(unknown)"; break;
 }
 seq_printf(m, "%s\n", name);
 return 0;
}
