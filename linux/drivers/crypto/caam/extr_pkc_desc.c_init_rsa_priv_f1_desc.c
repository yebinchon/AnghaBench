
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsa_priv_f1_pdb {int d_dma; int n_dma; int f_dma; int g_dma; int sgf; } ;


 int OP_PCLID_RSADEC_PRVKEY ;
 int OP_TYPE_UNI_PROTOCOL ;
 int RSA_PRIV_KEY_FRM_1 ;
 int SIZEOF_RSA_PRIV_F1_PDB ;
 int append_cmd (int *,int ) ;
 int append_operation (int *,int) ;
 int append_ptr (int *,int ) ;
 int init_job_desc_pdb (int *,int ,int ) ;

void init_rsa_priv_f1_desc(u32 *desc, struct rsa_priv_f1_pdb *pdb)
{
 init_job_desc_pdb(desc, 0, SIZEOF_RSA_PRIV_F1_PDB);
 append_cmd(desc, pdb->sgf);
 append_ptr(desc, pdb->g_dma);
 append_ptr(desc, pdb->f_dma);
 append_ptr(desc, pdb->n_dma);
 append_ptr(desc, pdb->d_dma);
 append_operation(desc, OP_TYPE_UNI_PROTOCOL | OP_PCLID_RSADEC_PRVKEY |
    RSA_PRIV_KEY_FRM_1);
}
