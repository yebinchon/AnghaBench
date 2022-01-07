
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ocrdma_mcqe {int valid_ae_cmpl_cons; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct ocrdma_dev {TYPE_2__ mq; } ;


 int OCRDMA_MCQE_AE_MASK ;
 int OCRDMA_MCQE_CMPL_MASK ;
 int memset (struct ocrdma_mcqe*,int ,int) ;
 struct ocrdma_mcqe* ocrdma_get_mcqe (struct ocrdma_dev*) ;
 int ocrdma_le32_to_cpu (struct ocrdma_mcqe*,int) ;
 int ocrdma_mcq_inc_tail (struct ocrdma_dev*) ;
 int ocrdma_process_acqe (struct ocrdma_dev*,struct ocrdma_mcqe*) ;
 int ocrdma_process_mcqe (struct ocrdma_dev*,struct ocrdma_mcqe*) ;
 int ocrdma_ring_cq_db (struct ocrdma_dev*,int ,int,int,int) ;

__attribute__((used)) static int ocrdma_mq_cq_handler(struct ocrdma_dev *dev, u16 cq_id)
{
 u16 cqe_popped = 0;
 struct ocrdma_mcqe *cqe;

 while (1) {
  cqe = ocrdma_get_mcqe(dev);
  if (cqe == ((void*)0))
   break;
  ocrdma_le32_to_cpu(cqe, sizeof(*cqe));
  cqe_popped += 1;
  if (cqe->valid_ae_cmpl_cons & OCRDMA_MCQE_AE_MASK)
   ocrdma_process_acqe(dev, cqe);
  else if (cqe->valid_ae_cmpl_cons & OCRDMA_MCQE_CMPL_MASK)
   ocrdma_process_mcqe(dev, cqe);
  memset(cqe, 0, sizeof(struct ocrdma_mcqe));
  ocrdma_mcq_inc_tail(dev);
 }
 ocrdma_ring_cq_db(dev, dev->mq.cq.id, 1, 0, cqe_popped);
 return 0;
}
