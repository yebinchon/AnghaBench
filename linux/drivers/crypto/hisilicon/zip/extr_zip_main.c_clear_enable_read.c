
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {scalar_t__ io_base; } ;
struct ctrl_debug_file {int dummy; } ;


 scalar_t__ HZIP_SOFT_CTRL_CNT_CLR_CE ;
 int SOFT_CTRL_CNT_CLR_CE_BIT ;
 struct hisi_qm* file_to_qm (struct ctrl_debug_file*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 clear_enable_read(struct ctrl_debug_file *file)
{
 struct hisi_qm *qm = file_to_qm(file);

 return readl(qm->io_base + HZIP_SOFT_CTRL_CNT_CLR_CE) &
        SOFT_CTRL_CNT_CLR_CE_BIT;
}
