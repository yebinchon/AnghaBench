
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* initial_path; int* return_path; } ;
struct TYPE_4__ {TYPE_1__ dr; } ;
struct opa_smp {int hop_ptr; TYPE_2__ route; } ;


 int opa_get_smp_direction (struct opa_smp*) ;

int opa_smi_get_fwd_port(struct opa_smp *smp)
{
 return !opa_get_smp_direction(smp) ? smp->route.dr.initial_path[smp->hop_ptr+1] :
  smp->route.dr.return_path[smp->hop_ptr-1];
}
