
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_18__ ;
typedef struct TYPE_26__ TYPE_17__ ;
typedef struct TYPE_25__ TYPE_16__ ;
typedef struct TYPE_24__ TYPE_15__ ;
typedef struct TYPE_23__ TYPE_14__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int u8 ;
struct TYPE_35__ {scalar_t__ function; } ;
struct TYPE_36__ {TYPE_8__ ecc; } ;
struct TYPE_32__ {int length; scalar_t__ offset; int address; } ;
struct TYPE_33__ {TYPE_5__ dma; } ;
struct TYPE_34__ {TYPE_6__ u; } ;
struct TYPE_28__ {int length; scalar_t__ offset; int address; } ;
struct TYPE_29__ {TYPE_1__ dma; } ;
struct TYPE_30__ {TYPE_2__ u; } ;
struct ccp_op {int soc; TYPE_9__ u; TYPE_7__ dst; TYPE_3__ src; int jobid; struct ccp_cmd_queue* cmd_q; } ;
struct TYPE_24__ {scalar_t__ x_len; scalar_t__ y_len; int y; int x; } ;
struct TYPE_23__ {scalar_t__ x_len; scalar_t__ y_len; int y; int x; } ;
struct TYPE_22__ {scalar_t__ x_len; scalar_t__ y_len; int y; int x; } ;
struct TYPE_25__ {scalar_t__ domain_a_len; scalar_t__ scalar_len; TYPE_15__ result; int scalar; int domain_a; TYPE_14__ point_2; TYPE_13__ point_1; } ;
struct TYPE_26__ {TYPE_16__ pm; } ;
struct ccp_ecc_engine {scalar_t__ function; scalar_t__ mod_len; int ecc_result; TYPE_17__ u; int mod; } ;
struct TYPE_31__ {int address; } ;
struct ccp_dm_workarea {int* address; int length; TYPE_4__ dma; } ;
struct ccp_cmd_queue {int cmd_error; TYPE_18__* ccp; } ;
struct TYPE_21__ {struct ccp_ecc_engine ecc; } ;
struct ccp_cmd {int engine_error; TYPE_12__ u; } ;
typedef int op ;
typedef int __le16 ;
struct TYPE_27__ {TYPE_11__* vdata; } ;
struct TYPE_20__ {TYPE_10__* perform; } ;
struct TYPE_19__ {int (* ecc ) (struct ccp_op*) ;} ;


 int CCP_ECC_DST_BUF_SIZE ;
 scalar_t__ CCP_ECC_FUNCTION_PADD_384BIT ;
 scalar_t__ CCP_ECC_FUNCTION_PMUL_384BIT ;
 scalar_t__ CCP_ECC_MODULUS_BYTES ;
 int CCP_ECC_OPERAND_SIZE ;
 int CCP_ECC_OUTPUT_SIZE ;
 int CCP_ECC_RESULT_OFFSET ;
 int CCP_ECC_RESULT_SUCCESS ;
 int CCP_ECC_SRC_BUF_SIZE ;
 int CCP_NEW_JOBID (TYPE_18__*) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int EIO ;
 int ccp_dm_free (struct ccp_dm_workarea*) ;
 int ccp_init_dm_workarea (struct ccp_dm_workarea*,struct ccp_cmd_queue*,int ,int ) ;
 int ccp_reverse_get_dm_area (struct ccp_dm_workarea*,int ,int ,int ,scalar_t__) ;
 int ccp_reverse_set_dm_area (struct ccp_dm_workarea*,int ,int ,int ,scalar_t__) ;
 int le16_to_cpup (int const*) ;
 int memset (struct ccp_op*,int ,int) ;
 int stub1 (struct ccp_op*) ;

__attribute__((used)) static int ccp_run_ecc_pm_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
{
 struct ccp_ecc_engine *ecc = &cmd->u.ecc;
 struct ccp_dm_workarea src, dst;
 struct ccp_op op;
 int ret;
 u8 *save;

 if (!ecc->u.pm.point_1.x ||
     (ecc->u.pm.point_1.x_len > CCP_ECC_MODULUS_BYTES) ||
     !ecc->u.pm.point_1.y ||
     (ecc->u.pm.point_1.y_len > CCP_ECC_MODULUS_BYTES))
  return -EINVAL;

 if (ecc->function == CCP_ECC_FUNCTION_PADD_384BIT) {
  if (!ecc->u.pm.point_2.x ||
      (ecc->u.pm.point_2.x_len > CCP_ECC_MODULUS_BYTES) ||
      !ecc->u.pm.point_2.y ||
      (ecc->u.pm.point_2.y_len > CCP_ECC_MODULUS_BYTES))
   return -EINVAL;
 } else {
  if (!ecc->u.pm.domain_a ||
      (ecc->u.pm.domain_a_len > CCP_ECC_MODULUS_BYTES))
   return -EINVAL;

  if (ecc->function == CCP_ECC_FUNCTION_PMUL_384BIT)
   if (!ecc->u.pm.scalar ||
       (ecc->u.pm.scalar_len > CCP_ECC_MODULUS_BYTES))
    return -EINVAL;
 }

 if (!ecc->u.pm.result.x ||
     (ecc->u.pm.result.x_len < CCP_ECC_MODULUS_BYTES) ||
     !ecc->u.pm.result.y ||
     (ecc->u.pm.result.y_len < CCP_ECC_MODULUS_BYTES))
  return -EINVAL;

 memset(&op, 0, sizeof(op));
 op.cmd_q = cmd_q;
 op.jobid = CCP_NEW_JOBID(cmd_q->ccp);






 ret = ccp_init_dm_workarea(&src, cmd_q, CCP_ECC_SRC_BUF_SIZE,
       DMA_TO_DEVICE);
 if (ret)
  return ret;




 save = src.address;


 ret = ccp_reverse_set_dm_area(&src, 0, ecc->mod, 0, ecc->mod_len);
 if (ret)
  goto e_src;
 src.address += CCP_ECC_OPERAND_SIZE;


 ret = ccp_reverse_set_dm_area(&src, 0, ecc->u.pm.point_1.x, 0,
          ecc->u.pm.point_1.x_len);
 if (ret)
  goto e_src;
 src.address += CCP_ECC_OPERAND_SIZE;
 ret = ccp_reverse_set_dm_area(&src, 0, ecc->u.pm.point_1.y, 0,
          ecc->u.pm.point_1.y_len);
 if (ret)
  goto e_src;
 src.address += CCP_ECC_OPERAND_SIZE;


 *src.address = 0x01;
 src.address += CCP_ECC_OPERAND_SIZE;

 if (ecc->function == CCP_ECC_FUNCTION_PADD_384BIT) {

  ret = ccp_reverse_set_dm_area(&src, 0, ecc->u.pm.point_2.x, 0,
           ecc->u.pm.point_2.x_len);
  if (ret)
   goto e_src;
  src.address += CCP_ECC_OPERAND_SIZE;
  ret = ccp_reverse_set_dm_area(&src, 0, ecc->u.pm.point_2.y, 0,
           ecc->u.pm.point_2.y_len);
  if (ret)
   goto e_src;
  src.address += CCP_ECC_OPERAND_SIZE;


  *src.address = 0x01;
  src.address += CCP_ECC_OPERAND_SIZE;
 } else {

  ret = ccp_reverse_set_dm_area(&src, 0, ecc->u.pm.domain_a, 0,
           ecc->u.pm.domain_a_len);
  if (ret)
   goto e_src;
  src.address += CCP_ECC_OPERAND_SIZE;

  if (ecc->function == CCP_ECC_FUNCTION_PMUL_384BIT) {

   ret = ccp_reverse_set_dm_area(&src, 0,
            ecc->u.pm.scalar, 0,
            ecc->u.pm.scalar_len);
   if (ret)
    goto e_src;
   src.address += CCP_ECC_OPERAND_SIZE;
  }
 }


 src.address = save;


 ret = ccp_init_dm_workarea(&dst, cmd_q, CCP_ECC_DST_BUF_SIZE,
       DMA_FROM_DEVICE);
 if (ret)
  goto e_src;

 op.soc = 1;
 op.src.u.dma.address = src.dma.address;
 op.src.u.dma.offset = 0;
 op.src.u.dma.length = src.length;
 op.dst.u.dma.address = dst.dma.address;
 op.dst.u.dma.offset = 0;
 op.dst.u.dma.length = dst.length;

 op.u.ecc.function = cmd->u.ecc.function;

 ret = cmd_q->ccp->vdata->perform->ecc(&op);
 if (ret) {
  cmd->engine_error = cmd_q->cmd_error;
  goto e_dst;
 }

 ecc->ecc_result = le16_to_cpup(
  (const __le16 *)(dst.address + CCP_ECC_RESULT_OFFSET));
 if (!(ecc->ecc_result & CCP_ECC_RESULT_SUCCESS)) {
  ret = -EIO;
  goto e_dst;
 }




 save = dst.address;


 ccp_reverse_get_dm_area(&dst, 0, ecc->u.pm.result.x, 0,
    CCP_ECC_MODULUS_BYTES);
 dst.address += CCP_ECC_OUTPUT_SIZE;
 ccp_reverse_get_dm_area(&dst, 0, ecc->u.pm.result.y, 0,
    CCP_ECC_MODULUS_BYTES);
 dst.address += CCP_ECC_OUTPUT_SIZE;


 dst.address = save;

e_dst:
 ccp_dm_free(&dst);

e_src:
 ccp_dm_free(&src);

 return ret;
}
