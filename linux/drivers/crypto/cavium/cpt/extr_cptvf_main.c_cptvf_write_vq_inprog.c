
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inflight; } ;
union cptx_vqx_inprog {int u; TYPE_1__ s; } ;
typedef int u8 ;
struct cpt_vf {int reg_base; } ;


 int CPTX_VQX_INPROG (int ,int ) ;
 int cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int ) ;

__attribute__((used)) static void cptvf_write_vq_inprog(struct cpt_vf *cptvf, u8 val)
{
 union cptx_vqx_inprog vqx_inprg;

 vqx_inprg.u = cpt_read_csr64(cptvf->reg_base, CPTX_VQX_INPROG(0, 0));
 vqx_inprg.s.inflight = val;
 cpt_write_csr64(cptvf->reg_base, CPTX_VQX_INPROG(0, 0), vqx_inprg.u);
}
