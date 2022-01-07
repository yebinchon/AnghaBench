
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; } ;
union cptx_vqx_done_ena_w1s {int u; TYPE_1__ s; } ;
struct cpt_vf {int reg_base; } ;


 int CPTX_VQX_DONE_ENA_W1S (int ,int ) ;
 int cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int ) ;

__attribute__((used)) static void cptvf_enable_done_interrupts(struct cpt_vf *cptvf)
{
 union cptx_vqx_done_ena_w1s vqx_done_ena;

 vqx_done_ena.u = cpt_read_csr64(cptvf->reg_base,
     CPTX_VQX_DONE_ENA_W1S(0, 0));

 vqx_done_ena.s.done = 1;
 cpt_write_csr64(cptvf->reg_base, CPTX_VQX_DONE_ENA_W1S(0, 0),
   vqx_done_ena.u);
}
