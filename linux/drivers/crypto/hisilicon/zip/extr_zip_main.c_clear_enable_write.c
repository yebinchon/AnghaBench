
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {scalar_t__ io_base; } ;
struct ctrl_debug_file {int dummy; } ;


 int EINVAL ;
 scalar_t__ HZIP_SOFT_CTRL_CNT_CLR_CE ;
 int SOFT_CTRL_CNT_CLR_CE_BIT ;
 struct hisi_qm* file_to_qm (struct ctrl_debug_file*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clear_enable_write(struct ctrl_debug_file *file, u32 val)
{
 struct hisi_qm *qm = file_to_qm(file);
 u32 tmp;

 if (val != 1 && val != 0)
  return -EINVAL;

 tmp = (readl(qm->io_base + HZIP_SOFT_CTRL_CNT_CLR_CE) &
        ~SOFT_CTRL_CNT_CLR_CE_BIT) | val;
 writel(tmp, qm->io_base + HZIP_SOFT_CTRL_CNT_CLR_CE);

 return 0;
}
