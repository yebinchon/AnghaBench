
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbell_cnt; } ;
union cptx_vqx_doorbell {int u; TYPE_1__ s; } ;
typedef int u32 ;
struct cpt_vf {int reg_base; } ;


 int CPTX_VQX_DOORBELL (int ,int ) ;
 int cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int ) ;

void cptvf_write_vq_doorbell(struct cpt_vf *cptvf, u32 val)
{
 union cptx_vqx_doorbell vqx_dbell;

 vqx_dbell.u = cpt_read_csr64(cptvf->reg_base,
         CPTX_VQX_DOORBELL(0, 0));
 vqx_dbell.s.dbell_cnt = val * 8;
 cpt_write_csr64(cptvf->reg_base, CPTX_VQX_DOORBELL(0, 0),
   vqx_dbell.u);
}
