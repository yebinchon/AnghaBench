
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct icp_qat_uof_objhdr {int dummy; } ;
struct TYPE_8__ {struct icp_qat_uof_objhdr* obj_hdr; scalar_t__ beg_uof; } ;
struct icp_qat_uclo_objhandle {int uword_in_bytes; int prod_rev; unsigned int uimage_num; int uword_buf; TYPE_2__* ae_uimage; int init_mem_tab; TYPE_4__ encap_uof_obj; int str_table; TYPE_3__* obj_hdr; int ustore_phy_size; int prod_type; } ;
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; struct icp_qat_uclo_objhandle* obj_handle; } ;
struct TYPE_7__ {scalar_t__ file_buff; } ;
struct TYPE_6__ {int page; } ;
struct TYPE_5__ {int revision_id; int ae_max_num; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICP_QAT_UCLO_MAX_AE ;
 int ICP_QAT_UCLO_MAX_CTX ;
 int ICP_QAT_UCLO_MAX_USTORE ;
 int ICP_QAT_UOF_STRT ;
 int PID_MAJOR_REV ;
 int PID_MINOR_REV ;
 int UWORD_CPYBUF_SIZE ;
 int kcalloc (int ,int,int ) ;
 int kfree (int ) ;
 int pr_err (char*) ;
 scalar_t__ qat_uclo_check_uof_compat (struct icp_qat_uclo_objhandle*) ;
 int qat_uclo_get_dev_type (struct icp_qat_fw_loader_handle*) ;
 int qat_uclo_init_uword_num (struct icp_qat_fw_loader_handle*) ;
 scalar_t__ qat_uclo_map_ae (struct icp_qat_fw_loader_handle*,int ) ;
 int qat_uclo_map_initmem_table (TYPE_4__*,int *) ;
 int qat_uclo_map_str_table (TYPE_3__*,int ,int *) ;
 unsigned int qat_uclo_map_uimage (struct icp_qat_uclo_objhandle*,TYPE_2__*,int) ;
 scalar_t__ qat_uclo_set_ae_mode (struct icp_qat_fw_loader_handle*) ;

__attribute__((used)) static int qat_uclo_parse_uof_obj(struct icp_qat_fw_loader_handle *handle)
{
 struct icp_qat_uclo_objhandle *obj_handle = handle->obj_handle;
 unsigned int ae;

 obj_handle->encap_uof_obj.beg_uof = obj_handle->obj_hdr->file_buff;
 obj_handle->encap_uof_obj.obj_hdr = (struct icp_qat_uof_objhdr *)
          obj_handle->obj_hdr->file_buff;
 obj_handle->uword_in_bytes = 6;
 obj_handle->prod_type = qat_uclo_get_dev_type(handle);
 obj_handle->prod_rev = PID_MAJOR_REV |
   (PID_MINOR_REV & handle->hal_handle->revision_id);
 if (qat_uclo_check_uof_compat(obj_handle)) {
  pr_err("QAT: UOF incompatible\n");
  return -EINVAL;
 }
 obj_handle->uword_buf = kcalloc(UWORD_CPYBUF_SIZE, sizeof(uint64_t),
     GFP_KERNEL);
 if (!obj_handle->uword_buf)
  return -ENOMEM;
 obj_handle->ustore_phy_size = ICP_QAT_UCLO_MAX_USTORE;
 if (!obj_handle->obj_hdr->file_buff ||
     !qat_uclo_map_str_table(obj_handle->obj_hdr, ICP_QAT_UOF_STRT,
        &obj_handle->str_table)) {
  pr_err("QAT: UOF doesn't have effective images\n");
  goto out_err;
 }
 obj_handle->uimage_num =
  qat_uclo_map_uimage(obj_handle, obj_handle->ae_uimage,
        ICP_QAT_UCLO_MAX_AE * ICP_QAT_UCLO_MAX_CTX);
 if (!obj_handle->uimage_num)
  goto out_err;
 if (qat_uclo_map_ae(handle, handle->hal_handle->ae_max_num)) {
  pr_err("QAT: Bad object\n");
  goto out_check_uof_aemask_err;
 }
 qat_uclo_init_uword_num(handle);
 qat_uclo_map_initmem_table(&obj_handle->encap_uof_obj,
       &obj_handle->init_mem_tab);
 if (qat_uclo_set_ae_mode(handle))
  goto out_check_uof_aemask_err;
 return 0;
out_check_uof_aemask_err:
 for (ae = 0; ae < obj_handle->uimage_num; ae++)
  kfree(obj_handle->ae_uimage[ae].page);
out_err:
 kfree(obj_handle->uword_buf);
 return -EFAULT;
}
