
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int pvid; int update_sl; } ;
struct ocrdma_ae_pvid_mcqe {int tag_enabled; } ;
struct ocrdma_ae_mcqe {int valid_ae_event; } ;


 int OCRDMA_AE_MCQE_EVENT_TYPE_MASK ;
 int OCRDMA_AE_MCQE_EVENT_TYPE_SHIFT ;
 int OCRDMA_AE_PVID_MCQE_ENABLED_MASK ;
 int OCRDMA_AE_PVID_MCQE_ENABLED_SHIFT ;
 int OCRDMA_AE_PVID_MCQE_TAG_MASK ;
 int OCRDMA_AE_PVID_MCQE_TAG_SHIFT ;


 int atomic_set (int *,int) ;

__attribute__((used)) static void ocrdma_process_grp5_aync(struct ocrdma_dev *dev,
     struct ocrdma_ae_mcqe *cqe)
{
 struct ocrdma_ae_pvid_mcqe *evt;
 int type = (cqe->valid_ae_event & OCRDMA_AE_MCQE_EVENT_TYPE_MASK) >>
   OCRDMA_AE_MCQE_EVENT_TYPE_SHIFT;

 switch (type) {
 case 128:
  evt = (struct ocrdma_ae_pvid_mcqe *)cqe;
  if ((evt->tag_enabled & OCRDMA_AE_PVID_MCQE_ENABLED_MASK) >>
   OCRDMA_AE_PVID_MCQE_ENABLED_SHIFT)
   dev->pvid = ((evt->tag_enabled &
     OCRDMA_AE_PVID_MCQE_TAG_MASK) >>
     OCRDMA_AE_PVID_MCQE_TAG_SHIFT);
  break;

 case 129:
  atomic_set(&dev->update_sl, 1);
  break;
 default:

  break;
 }
}
