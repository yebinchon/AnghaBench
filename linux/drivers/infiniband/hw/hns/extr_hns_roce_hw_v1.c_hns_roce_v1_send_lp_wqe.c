
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_send_wr {unsigned long long wr_id; int opcode; int * sg_list; scalar_t__ send_flags; scalar_t__ num_sge; int * next; } ;
struct TYPE_4__ {int device; } ;
struct hns_roce_qp {TYPE_2__ ibqp; } ;
struct hns_roce_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int send_wr ;
struct TYPE_3__ {struct device dev; } ;


 int IB_WR_RDMA_WRITE ;
 int dev_err (struct device*,char*,int) ;
 int hns_roce_v1_post_send (TYPE_2__*,struct ib_send_wr*,struct ib_send_wr const**) ;
 int memset (struct ib_send_wr*,int ,int) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

__attribute__((used)) static int hns_roce_v1_send_lp_wqe(struct hns_roce_qp *hr_qp)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(hr_qp->ibqp.device);
 struct device *dev = &hr_dev->pdev->dev;
 struct ib_send_wr send_wr;
 const struct ib_send_wr *bad_wr;
 int ret;

 memset(&send_wr, 0, sizeof(send_wr));
 send_wr.next = ((void*)0);
 send_wr.num_sge = 0;
 send_wr.send_flags = 0;
 send_wr.sg_list = ((void*)0);
 send_wr.wr_id = (unsigned long long)&send_wr;
 send_wr.opcode = IB_WR_RDMA_WRITE;

 ret = hns_roce_v1_post_send(&hr_qp->ibqp, &send_wr, &bad_wr);
 if (ret) {
  dev_err(dev, "Post write wqe for mr free failed(%d)!", ret);
  return ret;
 }

 return 0;
}
