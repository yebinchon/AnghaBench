
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_udata {scalar_t__ outlen; scalar_t__ inlen; } ;
struct ib_device_attr {int max_mr_size; int max_recv_sge; int max_send_sge; int max_qp_wr; int max_cqe; int max_ah; int max_mr; int max_pd; int max_cq; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int page_size_cap; } ;
struct ib_device {int dummy; } ;
struct efa_ibv_ex_query_device_resp {int max_rq_wr; int max_sq_wr; int max_rq_sge; int max_sq_sge; } ;
struct efa_com_get_device_attr_result {int max_mr_pages; int max_rq_depth; int max_sq_depth; int max_rq_sge; int max_sq_sge; int max_cq_depth; int max_ah; int max_mr; int max_pd; int max_cq; int max_qp; int page_size_cap; } ;
struct efa_dev {TYPE_1__* pdev; struct efa_com_get_device_attr_result dev_attr; } ;
typedef int resp ;
struct TYPE_2__ {int subsystem_device; int device; int vendor; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int ib_copy_to_udata (struct ib_udata*,struct efa_ibv_ex_query_device_resp*,int ) ;
 int ib_is_udata_cleared (struct ib_udata*,int ,scalar_t__) ;
 int ibdev_dbg (struct ib_device*,char*) ;
 int memset (struct ib_device_attr*,int ,int) ;
 int min (int,scalar_t__) ;
 int min_t (int ,int ,int ) ;
 struct efa_dev* to_edev (struct ib_device*) ;
 int u32 ;

int efa_query_device(struct ib_device *ibdev,
       struct ib_device_attr *props,
       struct ib_udata *udata)
{
 struct efa_com_get_device_attr_result *dev_attr;
 struct efa_ibv_ex_query_device_resp resp = {};
 struct efa_dev *dev = to_edev(ibdev);
 int err;

 if (udata && udata->inlen &&
     !ib_is_udata_cleared(udata, 0, udata->inlen)) {
  ibdev_dbg(ibdev,
     "Incompatible ABI params, udata not cleared\n");
  return -EINVAL;
 }

 dev_attr = &dev->dev_attr;

 memset(props, 0, sizeof(*props));
 props->max_mr_size = dev_attr->max_mr_pages * PAGE_SIZE;
 props->page_size_cap = dev_attr->page_size_cap;
 props->vendor_id = dev->pdev->vendor;
 props->vendor_part_id = dev->pdev->device;
 props->hw_ver = dev->pdev->subsystem_device;
 props->max_qp = dev_attr->max_qp;
 props->max_cq = dev_attr->max_cq;
 props->max_pd = dev_attr->max_pd;
 props->max_mr = dev_attr->max_mr;
 props->max_ah = dev_attr->max_ah;
 props->max_cqe = dev_attr->max_cq_depth;
 props->max_qp_wr = min_t(u32, dev_attr->max_sq_depth,
     dev_attr->max_rq_depth);
 props->max_send_sge = dev_attr->max_sq_sge;
 props->max_recv_sge = dev_attr->max_rq_sge;

 if (udata && udata->outlen) {
  resp.max_sq_sge = dev_attr->max_sq_sge;
  resp.max_rq_sge = dev_attr->max_rq_sge;
  resp.max_sq_wr = dev_attr->max_sq_depth;
  resp.max_rq_wr = dev_attr->max_rq_depth;

  err = ib_copy_to_udata(udata, &resp,
           min(sizeof(resp), udata->outlen));
  if (err) {
   ibdev_dbg(ibdev,
      "Failed to copy udata for query_device\n");
   return err;
  }
 }

 return 0;
}
