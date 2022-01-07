
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int member_0; } ;
struct TYPE_7__ {TYPE_3__ member_0; } ;
struct vm_system_aperture_param {TYPE_2__ member_0; } ;
struct TYPE_10__ {int member_0; } ;
struct TYPE_9__ {TYPE_5__ member_0; } ;
struct vm_context0_param {TYPE_4__ member_0; } ;
struct hubp {TYPE_1__* funcs; } ;
struct dcn10_hubp {int dummy; } ;
struct dce_hwseq {int dummy; } ;
struct TYPE_6__ {int (* hubp_set_vm_context0_settings ) (struct hubp*,struct vm_context0_param*) ;int (* hubp_set_vm_system_aperture_settings ) (struct hubp*,struct vm_system_aperture_param*) ;} ;


 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;
 int mmhub_read_vm_context0_settings (struct dcn10_hubp*,struct vm_context0_param*,struct dce_hwseq*) ;
 int mmhub_read_vm_system_aperture_settings (struct dcn10_hubp*,struct vm_system_aperture_param*,struct dce_hwseq*) ;
 int stub1 (struct hubp*,struct vm_system_aperture_param*) ;
 int stub2 (struct hubp*,struct vm_context0_param*) ;

void dcn10_program_pte_vm(struct dce_hwseq *hws, struct hubp *hubp)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);
 struct vm_system_aperture_param apt = { {{ 0 } } };
 struct vm_context0_param vm0 = { { { 0 } } };

 mmhub_read_vm_system_aperture_settings(hubp1, &apt, hws);
 mmhub_read_vm_context0_settings(hubp1, &vm0, hws);

 hubp->funcs->hubp_set_vm_system_aperture_settings(hubp, &apt);
 hubp->funcs->hubp_set_vm_context0_settings(hubp, &vm0);
}
