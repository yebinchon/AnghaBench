
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsa_priv_f3_pdb {int p_q_len; int tmp2_dma; int tmp1_dma; int dq_dma; int dp_dma; int q_dma; int p_dma; int c_dma; int f_dma; int g_dma; int sgf; } ;


 int OP_PCLID_RSADEC_PRVKEY ;
 int OP_TYPE_UNI_PROTOCOL ;
 int RSA_PRIV_KEY_FRM_3 ;
 int SIZEOF_RSA_PRIV_F3_PDB ;
 int append_cmd (int *,int ) ;
 int append_operation (int *,int) ;
 int append_ptr (int *,int ) ;
 int init_job_desc_pdb (int *,int ,int ) ;

void init_rsa_priv_f3_desc(u32 *desc, struct rsa_priv_f3_pdb *pdb)
{
 init_job_desc_pdb(desc, 0, SIZEOF_RSA_PRIV_F3_PDB);
 append_cmd(desc, pdb->sgf);
 append_ptr(desc, pdb->g_dma);
 append_ptr(desc, pdb->f_dma);
 append_ptr(desc, pdb->c_dma);
 append_ptr(desc, pdb->p_dma);
 append_ptr(desc, pdb->q_dma);
 append_ptr(desc, pdb->dp_dma);
 append_ptr(desc, pdb->dq_dma);
 append_ptr(desc, pdb->tmp1_dma);
 append_ptr(desc, pdb->tmp2_dma);
 append_cmd(desc, pdb->p_q_len);
 append_operation(desc, OP_TYPE_UNI_PROTOCOL | OP_PCLID_RSADEC_PRVKEY |
    RSA_PRIV_KEY_FRM_3);
}
