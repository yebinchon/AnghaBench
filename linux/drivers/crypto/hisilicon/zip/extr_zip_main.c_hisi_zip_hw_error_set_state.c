
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_qm {scalar_t__ ver; scalar_t__ io_base; TYPE_1__* pdev; } ;
struct hisi_zip {struct hisi_qm qm; } ;
struct TYPE_2__ {int dev; } ;


 int HZIP_CORE_INT_DISABLE ;
 scalar_t__ HZIP_CORE_INT_MASK ;
 scalar_t__ HZIP_CORE_INT_SOURCE ;
 scalar_t__ QM_HW_V1 ;
 int dev_info (int *,char*,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hisi_zip_hw_error_set_state(struct hisi_zip *hisi_zip, bool state)
{
 struct hisi_qm *qm = &hisi_zip->qm;

 if (qm->ver == QM_HW_V1) {
  writel(HZIP_CORE_INT_DISABLE, qm->io_base + HZIP_CORE_INT_MASK);
  dev_info(&qm->pdev->dev, "ZIP v%d does not support hw error handle\n",
    qm->ver);
  return;
 }

 if (state) {

  writel(HZIP_CORE_INT_DISABLE, hisi_zip->qm.io_base +
           HZIP_CORE_INT_SOURCE);

  writel(0, hisi_zip->qm.io_base + HZIP_CORE_INT_MASK);
 } else {

  writel(HZIP_CORE_INT_DISABLE,
         hisi_zip->qm.io_base + HZIP_CORE_INT_MASK);
 }
}
