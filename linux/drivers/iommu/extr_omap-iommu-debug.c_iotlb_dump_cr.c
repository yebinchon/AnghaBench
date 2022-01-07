
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct omap_iommu {int dummy; } ;
struct cr_regs {int cam; int ram; } ;
typedef int ssize_t ;


 int MMU_CAM_P ;
 int seq_printf (struct seq_file*,char*,int,int ,int) ;

__attribute__((used)) static ssize_t iotlb_dump_cr(struct omap_iommu *obj, struct cr_regs *cr,
        struct seq_file *s)
{
 seq_printf(s, "%08x %08x %01x\n", cr->cam, cr->ram,
     (cr->cam & MMU_CAM_P) ? 1 : 0);
 return 0;
}
