
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time_wait; } ;
union cptx_vqx_done_wait {int u; TYPE_1__ s; } ;
typedef int u16 ;
struct cpt_vf {int reg_base; } ;


 int CPTX_VQX_DONE_WAIT (int ,int ) ;
 int cpt_read_csr64 (int ,int ) ;
 int cpt_write_csr64 (int ,int ,int ) ;

__attribute__((used)) static void cptvf_write_vq_done_timewait(struct cpt_vf *cptvf, u16 time)
{
 union cptx_vqx_done_wait vqx_dwait;

 vqx_dwait.u = cpt_read_csr64(cptvf->reg_base,
         CPTX_VQX_DONE_WAIT(0, 0));
 vqx_dwait.s.time_wait = time;
 cpt_write_csr64(cptvf->reg_base, CPTX_VQX_DONE_WAIT(0, 0),
   vqx_dwait.u);
}
