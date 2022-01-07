
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_uof_init_regsym {unsigned int value; int init_type; int ctx; scalar_t__ reg_addr; int reg_type; } ;
struct icp_qat_uclo_encapme {unsigned int init_regsym_num; struct icp_qat_uof_init_regsym* init_regsym; TYPE_1__* img_ptr; } ;
struct icp_qat_fw_loader_handle {int dummy; } ;
typedef enum icp_qat_uof_regtype { ____Placeholder_icp_qat_uof_regtype } icp_qat_uof_regtype ;
struct TYPE_2__ {int ae_mode; } ;


 int EINVAL ;
 scalar_t__ ICP_QAT_CTX_MODE (int ) ;
 scalar_t__ ICP_QAT_UCLO_MAX_CTX ;




 int pr_err (char*,...) ;
 int qat_uclo_init_reg (struct icp_qat_fw_loader_handle*,unsigned int,unsigned char,int,unsigned short,unsigned int) ;

__attribute__((used)) static int qat_uclo_init_reg_sym(struct icp_qat_fw_loader_handle *handle,
     unsigned int ae,
     struct icp_qat_uclo_encapme *encap_ae)
{
 unsigned int i;
 unsigned char ctx_mask;
 struct icp_qat_uof_init_regsym *init_regsym;

 if (ICP_QAT_CTX_MODE(encap_ae->img_ptr->ae_mode) ==
     ICP_QAT_UCLO_MAX_CTX)
  ctx_mask = 0xff;
 else
  ctx_mask = 0x55;

 for (i = 0; i < encap_ae->init_regsym_num; i++) {
  unsigned int exp_res;

  init_regsym = &encap_ae->init_regsym[i];
  exp_res = init_regsym->value;
  switch (init_regsym->init_type) {
  case 129:
   qat_uclo_init_reg(handle, ae, ctx_mask,
       (enum icp_qat_uof_regtype)
       init_regsym->reg_type,
       (unsigned short)init_regsym->reg_addr,
       exp_res);
   break;
  case 128:

   if (!((1 << init_regsym->ctx) & ctx_mask)) {
    pr_err("QAT: invalid ctx num = 0x%x\n",
           init_regsym->ctx);
    return -EINVAL;
   }
   qat_uclo_init_reg(handle, ae,
       (unsigned char)
       (1 << init_regsym->ctx),
       (enum icp_qat_uof_regtype)
       init_regsym->reg_type,
       (unsigned short)init_regsym->reg_addr,
       exp_res);
   break;
  case 131:
   pr_err("QAT: INIT_EXPR feature not supported\n");
   return -EINVAL;
  case 130:
   pr_err("QAT: INIT_EXPR_ENDIAN_SWAP feature not supported\n");
   return -EINVAL;
  default:
   break;
  }
 }
 return 0;
}
