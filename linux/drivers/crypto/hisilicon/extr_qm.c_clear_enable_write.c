
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {scalar_t__ io_base; } ;
struct debugfs_file {int dummy; } ;


 int EINVAL ;
 scalar_t__ QM_DFX_CNT_CLR_CE ;
 struct hisi_qm* file_to_qm (struct debugfs_file*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clear_enable_write(struct debugfs_file *file, u32 rd_clr_ctrl)
{
 struct hisi_qm *qm = file_to_qm(file);

 if (rd_clr_ctrl > 1)
  return -EINVAL;

 writel(rd_clr_ctrl, qm->io_base + QM_DFX_CNT_CLR_CE);

 return 0;
}
