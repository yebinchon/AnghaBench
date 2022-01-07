
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debug_root; } ;
struct hisi_qm {scalar_t__ fun_type; TYPE_1__ debug; } ;
struct hisi_zip {struct hisi_qm qm; } ;


 scalar_t__ QM_HW_PF ;
 int debugfs_remove_recursive (int ) ;
 int hisi_zip_debug_regs_clear (struct hisi_zip*) ;

__attribute__((used)) static void hisi_zip_debugfs_exit(struct hisi_zip *hisi_zip)
{
 struct hisi_qm *qm = &hisi_zip->qm;

 debugfs_remove_recursive(qm->debug.debug_root);

 if (qm->fun_type == QM_HW_PF)
  hisi_zip_debug_regs_clear(hisi_zip);
}
