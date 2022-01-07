
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocrdma_fw_conf_rsp {int fn_mode; int max_eq; int base_eqid; } ;
struct ocrdma_dev {int max_eq; int base_eqid; } ;


 int EINVAL ;
 int OCRDMA_FN_MODE_RDMA ;

__attribute__((used)) static int ocrdma_check_fw_config(struct ocrdma_dev *dev,
       struct ocrdma_fw_conf_rsp *conf)
{
 u32 fn_mode;

 fn_mode = conf->fn_mode & OCRDMA_FN_MODE_RDMA;
 if (fn_mode != OCRDMA_FN_MODE_RDMA)
  return -EINVAL;
 dev->base_eqid = conf->base_eqid;
 dev->max_eq = conf->max_eq;
 return 0;
}
