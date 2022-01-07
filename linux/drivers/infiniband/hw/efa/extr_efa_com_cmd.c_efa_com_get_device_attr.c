
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct efa_com_get_device_attr_result {int admin_api_version; int sub_cqs_per_cq; int max_llq_size; int max_ah; int max_pd; int max_mr_pages; int max_mr; int max_rq_sge; int max_sq_sge; int inline_buf_size; int max_cq_depth; int max_cq; int max_rq_depth; int max_sq_depth; int max_qp; int db_bar; int virt_addr_width; int phys_addr_width; int supported_features; int device_version; int fw_version; int page_size_cap; } ;
struct efa_com_dev {int efa_dev; int supported_features; } ;
struct TYPE_5__ {int sub_cqs_per_cq; int max_llq_size; int max_ah; int max_pd; int max_mr_pages; int max_mr; int max_wr_recv_sges; int max_wr_send_sges; int inline_buf_size; int max_cq_depth; int max_cq; int max_rq_depth; int max_sq_depth; int max_qp; } ;
struct TYPE_4__ {int admin_api_version; int supported_features; int db_bar; int virt_addr_width; int phys_addr_width; int device_version; int fw_version; int page_size_cap; } ;
struct TYPE_6__ {TYPE_2__ queue_attr; TYPE_1__ device_attr; } ;
struct efa_admin_get_feature_resp {TYPE_3__ u; } ;


 int EFA_ADMIN_DEVICE_ATTR ;
 int EFA_ADMIN_QUEUE_ATTR ;
 int EINVAL ;
 int efa_com_get_feature (struct efa_com_dev*,struct efa_admin_get_feature_resp*,int ) ;
 int ibdev_err_ratelimited (int ,char*,int) ;

int efa_com_get_device_attr(struct efa_com_dev *edev,
       struct efa_com_get_device_attr_result *result)
{
 struct efa_admin_get_feature_resp resp;
 int err;

 err = efa_com_get_feature(edev, &resp, EFA_ADMIN_DEVICE_ATTR);
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to get device attributes %d\n",
          err);
  return err;
 }

 result->page_size_cap = resp.u.device_attr.page_size_cap;
 result->fw_version = resp.u.device_attr.fw_version;
 result->admin_api_version = resp.u.device_attr.admin_api_version;
 result->device_version = resp.u.device_attr.device_version;
 result->supported_features = resp.u.device_attr.supported_features;
 result->phys_addr_width = resp.u.device_attr.phys_addr_width;
 result->virt_addr_width = resp.u.device_attr.virt_addr_width;
 result->db_bar = resp.u.device_attr.db_bar;

 if (result->admin_api_version < 1) {
  ibdev_err_ratelimited(
   edev->efa_dev,
   "Failed to get device attr api version [%u < 1]\n",
   result->admin_api_version);
  return -EINVAL;
 }

 edev->supported_features = resp.u.device_attr.supported_features;
 err = efa_com_get_feature(edev, &resp,
      EFA_ADMIN_QUEUE_ATTR);
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to get queue attributes %d\n",
          err);
  return err;
 }

 result->max_qp = resp.u.queue_attr.max_qp;
 result->max_sq_depth = resp.u.queue_attr.max_sq_depth;
 result->max_rq_depth = resp.u.queue_attr.max_rq_depth;
 result->max_cq = resp.u.queue_attr.max_cq;
 result->max_cq_depth = resp.u.queue_attr.max_cq_depth;
 result->inline_buf_size = resp.u.queue_attr.inline_buf_size;
 result->max_sq_sge = resp.u.queue_attr.max_wr_send_sges;
 result->max_rq_sge = resp.u.queue_attr.max_wr_recv_sges;
 result->max_mr = resp.u.queue_attr.max_mr;
 result->max_mr_pages = resp.u.queue_attr.max_mr_pages;
 result->max_pd = resp.u.queue_attr.max_pd;
 result->max_ah = resp.u.queue_attr.max_ah;
 result->max_llq_size = resp.u.queue_attr.max_llq_size;
 result->sub_cqs_per_cq = resp.u.queue_attr.sub_cqs_per_cq;

 return 0;
}
