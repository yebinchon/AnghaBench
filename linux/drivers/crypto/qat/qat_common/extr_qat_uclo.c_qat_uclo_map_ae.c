
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct icp_qat_uclo_objhandle {int uimage_num; TYPE_3__* ae_uimage; } ;
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; struct icp_qat_uclo_objhandle* obj_handle; } ;
struct TYPE_6__ {TYPE_2__* img_ptr; } ;
struct TYPE_5__ {int ae_assigned; } ;
struct TYPE_4__ {int ae_mask; } ;


 int EINVAL ;
 int pr_err (char*) ;
 scalar_t__ qat_uclo_init_ae_data (struct icp_qat_uclo_objhandle*,int,int) ;
 int test_bit (int,unsigned long*) ;

__attribute__((used)) static int qat_uclo_map_ae(struct icp_qat_fw_loader_handle *handle, int max_ae)
{
 int i, ae;
 int mflag = 0;
 struct icp_qat_uclo_objhandle *obj_handle = handle->obj_handle;

 for (ae = 0; ae < max_ae; ae++) {
  if (!test_bit(ae,
         (unsigned long *)&handle->hal_handle->ae_mask))
   continue;
  for (i = 0; i < obj_handle->uimage_num; i++) {
   if (!test_bit(ae, (unsigned long *)
   &obj_handle->ae_uimage[i].img_ptr->ae_assigned))
    continue;
   mflag = 1;
   if (qat_uclo_init_ae_data(obj_handle, ae, i))
    return -EINVAL;
  }
 }
 if (!mflag) {
  pr_err("QAT: uimage uses AE not set\n");
  return -EINVAL;
 }
 return 0;
}
