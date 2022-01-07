
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; } ;
union cptx_vqx_done {TYPE_1__ s; int u; } ;
typedef int u32 ;
struct cpt_vf {int reg_base; } ;


 int CPTX_VQX_DONE (int ,int ) ;
 int cpt_read_csr64 (int ,int ) ;

__attribute__((used)) static inline u32 cptvf_read_vq_done_count(struct cpt_vf *cptvf)
{
 union cptx_vqx_done vqx_done;

 vqx_done.u = cpt_read_csr64(cptvf->reg_base, CPTX_VQX_DONE(0, 0));
 return vqx_done.s.done;
}
