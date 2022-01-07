
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_rcfw {int dummy; } ;
struct bnxt_re_dev {int num_msix; struct bnxt_qplib_nq* nq; struct bnxt_msix_entry* msix_entries; struct bnxt_qplib_rcfw rcfw; } ;
struct bnxt_qplib_nq {int dummy; } ;
struct bnxt_msix_entry {int vector; } ;


 size_t BNXT_RE_AEQ_IDX ;
 int BNXT_RE_NQ_IDX ;
 int bnxt_qplib_nq_start_irq (struct bnxt_qplib_nq*,int,int ,int) ;
 int bnxt_qplib_rcfw_start_irq (struct bnxt_qplib_rcfw*,int ,int) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int rdev_to_dev (struct bnxt_re_dev*) ;

__attribute__((used)) static void bnxt_re_start_irq(void *handle, struct bnxt_msix_entry *ent)
{
 struct bnxt_re_dev *rdev = (struct bnxt_re_dev *)handle;
 struct bnxt_msix_entry *msix_ent = rdev->msix_entries;
 struct bnxt_qplib_rcfw *rcfw = &rdev->rcfw;
 struct bnxt_qplib_nq *nq;
 int indx, rc;

 if (!ent) {





  dev_err(rdev_to_dev(rdev), "Failed to re-start IRQs\n");
  return;
 }




 for (indx = 0; indx < rdev->num_msix; indx++)
  rdev->msix_entries[indx].vector = ent[indx].vector;

 bnxt_qplib_rcfw_start_irq(rcfw, msix_ent[BNXT_RE_AEQ_IDX].vector,
      0);
 for (indx = BNXT_RE_NQ_IDX ; indx < rdev->num_msix; indx++) {
  nq = &rdev->nq[indx - 1];
  rc = bnxt_qplib_nq_start_irq(nq, indx - 1,
          msix_ent[indx].vector, 0);
  if (rc)
   dev_warn(rdev_to_dev(rdev),
     "Failed to reinit NQ index %d\n", indx - 1);
 }
}
