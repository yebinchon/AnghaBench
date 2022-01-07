
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {scalar_t__ dr_dlid; scalar_t__ dr_slid; int return_path; int initial_path; int hop_cnt; int hop_ptr; } ;
typedef enum smi_action { ____Placeholder_smi_action } smi_action ;


 scalar_t__ IB_LID_PERMISSIVE ;
 int __smi_handle_dr_smp_send (int,int,int *,int ,int ,int ,int ,int,int) ;
 int ib_get_smp_direction (struct ib_smp*) ;

enum smi_action smi_handle_dr_smp_send(struct ib_smp *smp,
           bool is_switch, int port_num)
{
 return __smi_handle_dr_smp_send(is_switch, port_num,
     &smp->hop_ptr, smp->hop_cnt,
     smp->initial_path,
     smp->return_path,
     ib_get_smp_direction(smp),
     smp->dr_dlid == IB_LID_PERMISSIVE,
     smp->dr_slid == IB_LID_PERMISSIVE);
}
