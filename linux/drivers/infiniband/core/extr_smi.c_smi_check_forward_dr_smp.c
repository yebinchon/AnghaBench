
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {scalar_t__ dr_dlid; scalar_t__ dr_slid; int hop_cnt; int hop_ptr; } ;
typedef enum smi_forward_action { ____Placeholder_smi_forward_action } smi_forward_action ;


 scalar_t__ IB_LID_PERMISSIVE ;
 int __smi_check_forward_dr_smp (int ,int ,int ,int,int) ;
 int ib_get_smp_direction (struct ib_smp*) ;

enum smi_forward_action smi_check_forward_dr_smp(struct ib_smp *smp)
{
 return __smi_check_forward_dr_smp(smp->hop_ptr, smp->hop_cnt,
       ib_get_smp_direction(smp),
       smp->dr_dlid == IB_LID_PERMISSIVE,
       smp->dr_slid == IB_LID_PERMISSIVE);
}
