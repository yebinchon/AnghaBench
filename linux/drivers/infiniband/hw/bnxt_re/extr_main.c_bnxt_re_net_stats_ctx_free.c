
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hwrm_stat_ctx_free_input {int stat_ctx_id; int member_0; } ;
struct bnxt_re_dev {struct bnxt_en_dev* en_dev; } ;
struct bnxt_fw_msg {int dummy; } ;
struct bnxt_en_dev {TYPE_1__* en_ops; } ;
typedef int req ;
typedef int fw_msg ;
struct TYPE_2__ {int (* bnxt_send_fw_msg ) (struct bnxt_en_dev*,int ,struct bnxt_fw_msg*) ;} ;


 int BNXT_ROCE_ULP ;
 int DFLT_HWRM_CMD_TIMEOUT ;
 int EINVAL ;
 int HWRM_STAT_CTX_FREE ;
 int bnxt_re_fill_fw_msg (struct bnxt_fw_msg*,void*,int,void*,int,int ) ;
 int bnxt_re_init_hwrm_hdr (struct bnxt_re_dev*,void*,int ,int,int) ;
 int cpu_to_le32 (int ) ;
 int dev_err (int ,char*,int) ;
 int memset (struct bnxt_fw_msg*,int ,int) ;
 int rdev_to_dev (struct bnxt_re_dev*) ;
 int stub1 (struct bnxt_en_dev*,int ,struct bnxt_fw_msg*) ;

__attribute__((used)) static int bnxt_re_net_stats_ctx_free(struct bnxt_re_dev *rdev,
          u32 fw_stats_ctx_id)
{
 struct bnxt_en_dev *en_dev = rdev->en_dev;
 struct hwrm_stat_ctx_free_input req = {0};
 struct bnxt_fw_msg fw_msg;
 int rc = -EINVAL;

 if (!en_dev)
  return rc;

 memset(&fw_msg, 0, sizeof(fw_msg));

 bnxt_re_init_hwrm_hdr(rdev, (void *)&req, HWRM_STAT_CTX_FREE, -1, -1);
 req.stat_ctx_id = cpu_to_le32(fw_stats_ctx_id);
 bnxt_re_fill_fw_msg(&fw_msg, (void *)&req, sizeof(req), (void *)&req,
       sizeof(req), DFLT_HWRM_CMD_TIMEOUT);
 rc = en_dev->en_ops->bnxt_send_fw_msg(en_dev, BNXT_ROCE_ULP, &fw_msg);
 if (rc)
  dev_err(rdev_to_dev(rdev),
   "Failed to free HW stats context %#x", rc);

 return rc;
}
