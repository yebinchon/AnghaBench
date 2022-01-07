
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uresp ;
struct TYPE_5__ {int max_cnt; int len; int va; int dbid; } ;
struct ocrdma_srq {TYPE_3__* pd; TYPE_2__ rq; } ;
struct TYPE_4__ {int db_page_size; scalar_t__ unmapped_db; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct ocrdma_create_srq_uresp {int num_rq_pages; int db_page_size; int db_shift; int rq_page_size; int * rq_page_addr; int db_rq_offset; int num_rqe_allocated; scalar_t__ db_page_addr; int rq_dbid; } ;
struct ib_udata {int dummy; } ;
struct TYPE_6__ {int id; int uctx; } ;


 scalar_t__ OCRDMA_ASIC_GEN_SKH_R ;
 int OCRDMA_DB_GEN2_RQ_OFFSET ;
 int OCRDMA_DB_RQ_OFFSET ;
 int ib_copy_to_udata (struct ib_udata*,struct ocrdma_create_srq_uresp*,int) ;
 int memset (struct ocrdma_create_srq_uresp*,int ,int) ;
 int ocrdma_add_mmap (int ,int ,int ) ;
 scalar_t__ ocrdma_get_asic_type (struct ocrdma_dev*) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int ocrdma_copy_srq_uresp(struct ocrdma_dev *dev, struct ocrdma_srq *srq,
    struct ib_udata *udata)
{
 int status;
 struct ocrdma_create_srq_uresp uresp;

 memset(&uresp, 0, sizeof(uresp));
 uresp.rq_dbid = srq->rq.dbid;
 uresp.num_rq_pages = 1;
 uresp.rq_page_addr[0] = virt_to_phys(srq->rq.va);
 uresp.rq_page_size = srq->rq.len;
 uresp.db_page_addr = dev->nic_info.unmapped_db +
     (srq->pd->id * dev->nic_info.db_page_size);
 uresp.db_page_size = dev->nic_info.db_page_size;
 uresp.num_rqe_allocated = srq->rq.max_cnt;
 if (ocrdma_get_asic_type(dev) == OCRDMA_ASIC_GEN_SKH_R) {
  uresp.db_rq_offset = OCRDMA_DB_GEN2_RQ_OFFSET;
  uresp.db_shift = 24;
 } else {
  uresp.db_rq_offset = OCRDMA_DB_RQ_OFFSET;
  uresp.db_shift = 16;
 }

 status = ib_copy_to_udata(udata, &uresp, sizeof(uresp));
 if (status)
  return status;
 status = ocrdma_add_mmap(srq->pd->uctx, uresp.rq_page_addr[0],
     uresp.rq_page_size);
 if (status)
  return status;
 return status;
}
