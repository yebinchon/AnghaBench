
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct t4_cqe {int len; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_2__ lldi; } ;
struct c4iw_dev {TYPE_3__ rdev; } ;
typedef int __be64 ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ CQE_OPCODE (struct t4_cqe*) ;
 int CQE_QPID (struct t4_cqe*) ;
 int CQE_STATUS (struct t4_cqe*) ;
 int CQE_TYPE (struct t4_cqe*) ;
 int CQE_WRID_HI (struct t4_cqe*) ;
 int CQE_WRID_LOW (struct t4_cqe*) ;
 int CQE_WRID_STAG (struct t4_cqe*) ;
 scalar_t__ FW_RI_RDMA_WRITE ;
 scalar_t__ FW_RI_READ_RESP ;
 scalar_t__ RQ_TYPE (struct t4_cqe*) ;
 int be64_to_cpu (int ) ;
 int dev_err (int *,char*,int ,scalar_t__,int ,int ,int ,int ,int ) ;
 int ntohl (int ) ;
 int pr_debug (char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int print_tpte (struct c4iw_dev*,int ) ;

__attribute__((used)) static void dump_err_cqe(struct c4iw_dev *dev, struct t4_cqe *err_cqe)
{
 __be64 *p = (void *)err_cqe;

 dev_err(&dev->rdev.lldi.pdev->dev,
  "AE qpid %d opcode %d status 0x%x "
  "type %d len 0x%x wrid.hi 0x%x wrid.lo 0x%x\n",
  CQE_QPID(err_cqe), CQE_OPCODE(err_cqe),
  CQE_STATUS(err_cqe), CQE_TYPE(err_cqe), ntohl(err_cqe->len),
  CQE_WRID_HI(err_cqe), CQE_WRID_LOW(err_cqe));

 pr_debug("%016llx %016llx %016llx %016llx - %016llx %016llx %016llx %016llx\n",
   be64_to_cpu(p[0]), be64_to_cpu(p[1]), be64_to_cpu(p[2]),
   be64_to_cpu(p[3]), be64_to_cpu(p[4]), be64_to_cpu(p[5]),
   be64_to_cpu(p[6]), be64_to_cpu(p[7]));





 if (RQ_TYPE(err_cqe) && (CQE_OPCODE(err_cqe) == FW_RI_RDMA_WRITE ||
     CQE_OPCODE(err_cqe) == FW_RI_READ_RESP))
  print_tpte(dev, CQE_WRID_STAG(err_cqe));
}
