
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dr_dlid; scalar_t__ dr_slid; } ;
struct TYPE_4__ {TYPE_1__ dr; } ;
struct opa_smp {TYPE_2__ route; int hop_cnt; int hop_ptr; } ;
typedef enum smi_forward_action { ____Placeholder_smi_forward_action } smi_forward_action ;


 scalar_t__ OPA_LID_PERMISSIVE ;
 int __smi_check_forward_dr_smp (int ,int ,int ,int,int) ;
 int opa_get_smp_direction (struct opa_smp*) ;

enum smi_forward_action opa_smi_check_forward_dr_smp(struct opa_smp *smp)
{
 return __smi_check_forward_dr_smp(smp->hop_ptr, smp->hop_cnt,
       opa_get_smp_direction(smp),
       smp->route.dr.dr_dlid ==
       OPA_LID_PERMISSIVE,
       smp->route.dr.dr_slid ==
       OPA_LID_PERMISSIVE);
}
