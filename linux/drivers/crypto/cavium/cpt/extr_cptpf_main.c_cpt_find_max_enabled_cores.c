
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ae; int se; } ;
union cptx_pf_constants {TYPE_1__ s; int u; int member_0; } ;
struct cpt_device {int max_ae_cores; int max_se_cores; int reg_base; } ;


 int CPTX_PF_CONSTANTS (int ) ;
 int cpt_read_csr64 (int ,int ) ;

__attribute__((used)) static void cpt_find_max_enabled_cores(struct cpt_device *cpt)
{
 union cptx_pf_constants pf_cnsts = {0};

 pf_cnsts.u = cpt_read_csr64(cpt->reg_base, CPTX_PF_CONSTANTS(0));
 cpt->max_se_cores = pf_cnsts.s.se;
 cpt->max_ae_cores = pf_cnsts.s.ae;
}
