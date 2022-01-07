
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct hwrm_ring_alloc_output {int ring_id; } ;
struct hwrm_ring_alloc_input {int page_tbl_depth; int ring_type; int int_mode; int length; int logical_id; scalar_t__ fbo; int page_size; int page_tbl_addr; scalar_t__ enables; int member_0; } ;
struct bnxt_re_dev {struct bnxt_en_dev* en_dev; } ;
struct bnxt_fw_msg {int dummy; } ;
struct bnxt_en_dev {TYPE_1__* en_ops; } ;
typedef int resp ;
typedef int req ;
typedef int fw_msg ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* bnxt_send_fw_msg ) (struct bnxt_en_dev*,int ,struct bnxt_fw_msg*) ;} ;


 int BNXT_PAGE_SHIFT ;
 int BNXT_ROCE_ULP ;
 int DFLT_HWRM_CMD_TIMEOUT ;
 int EINVAL ;
 int HWRM_RING_ALLOC ;
 int RING_ALLOC_REQ_INT_MODE_MSIX ;
 int bnxt_re_fill_fw_msg (struct bnxt_fw_msg*,void*,int,void*,int,int ) ;
 int bnxt_re_init_hwrm_hdr (struct bnxt_re_dev*,void*,int ,int,int) ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (scalar_t__) ;
 int cpu_to_le64 (int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct bnxt_fw_msg*,int ,int) ;
 int stub1 (struct bnxt_en_dev*,int ,struct bnxt_fw_msg*) ;

__attribute__((used)) static int bnxt_re_net_ring_alloc(struct bnxt_re_dev *rdev, dma_addr_t *dma_arr,
      int pages, int type, u32 ring_mask,
      u32 map_index, u16 *fw_ring_id)
{
 struct bnxt_en_dev *en_dev = rdev->en_dev;
 struct hwrm_ring_alloc_input req = {0};
 struct hwrm_ring_alloc_output resp;
 struct bnxt_fw_msg fw_msg;
 int rc = -EINVAL;

 if (!en_dev)
  return rc;

 memset(&fw_msg, 0, sizeof(fw_msg));
 bnxt_re_init_hwrm_hdr(rdev, (void *)&req, HWRM_RING_ALLOC, -1, -1);
 req.enables = 0;
 req.page_tbl_addr = cpu_to_le64(dma_arr[0]);
 if (pages > 1) {

  req.page_size = BNXT_PAGE_SHIFT;
  req.page_tbl_depth = 1;
 }
 req.fbo = 0;

 req.logical_id = cpu_to_le16(map_index);
 req.length = cpu_to_le32(ring_mask + 1);
 req.ring_type = type;
 req.int_mode = RING_ALLOC_REQ_INT_MODE_MSIX;
 bnxt_re_fill_fw_msg(&fw_msg, (void *)&req, sizeof(req), (void *)&resp,
       sizeof(resp), DFLT_HWRM_CMD_TIMEOUT);
 rc = en_dev->en_ops->bnxt_send_fw_msg(en_dev, BNXT_ROCE_ULP, &fw_msg);
 if (!rc)
  *fw_ring_id = le16_to_cpu(resp.ring_id);

 return rc;
}
