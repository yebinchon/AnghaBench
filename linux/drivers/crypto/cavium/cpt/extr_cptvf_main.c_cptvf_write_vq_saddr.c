
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cptx_vqx_saddr {int u; } ;
typedef int u64 ;
struct cpt_vf {int reg_base; } ;


 int CPTX_VQX_SADDR (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int ) ;

__attribute__((used)) static void cptvf_write_vq_saddr(struct cpt_vf *cptvf, u64 val)
{
 union cptx_vqx_saddr vqx_saddr;

 vqx_saddr.u = val;
 cpt_write_csr64(cptvf->reg_base, CPTX_VQX_SADDR(0, 0), vqx_saddr.u);
}
