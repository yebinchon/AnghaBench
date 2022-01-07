
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_suof_handle {int dummy; } ;
struct icp_qat_fw_loader_handle {struct icp_qat_suof_handle* sobj_handle; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct icp_qat_suof_handle* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int qat_uclo_del_suof (struct icp_qat_fw_loader_handle*) ;
 scalar_t__ qat_uclo_map_suof (struct icp_qat_fw_loader_handle*,void*,int) ;

__attribute__((used)) static int qat_uclo_map_suof_obj(struct icp_qat_fw_loader_handle *handle,
     void *addr_ptr, int mem_size)
{
 struct icp_qat_suof_handle *suof_handle;

 suof_handle = kzalloc(sizeof(*suof_handle), GFP_KERNEL);
 if (!suof_handle)
  return -ENOMEM;
 handle->sobj_handle = suof_handle;
 if (qat_uclo_map_suof(handle, addr_ptr, mem_size)) {
  qat_uclo_del_suof(handle);
  pr_err("QAT: map SUOF failed\n");
  return -EINVAL;
 }
 return 0;
}
