
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done_ack; } ;
union cptx_vqx_done_ack {int u; TYPE_1__ s; } ;
typedef int u32 ;
struct cpt_vf {int reg_base; } ;


 int CPTX_VQX_DONE_ACK (int ,int ) ;
 int cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int ) ;

__attribute__((used)) static inline void cptvf_write_vq_done_ack(struct cpt_vf *cptvf,
        u32 ackcnt)
{
 union cptx_vqx_done_ack vqx_dack_cnt;

 vqx_dack_cnt.u = cpt_read_csr64(cptvf->reg_base,
     CPTX_VQX_DONE_ACK(0, 0));
 vqx_dack_cnt.s.done_ack = ackcnt;
 cpt_write_csr64(cptvf->reg_base, CPTX_VQX_DONE_ACK(0, 0),
   vqx_dack_cnt.u);
}
