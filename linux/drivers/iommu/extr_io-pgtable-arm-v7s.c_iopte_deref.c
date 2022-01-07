
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cfg; } ;
struct arm_v7s_io_pgtable {TYPE_1__ iop; } ;
typedef int arm_v7s_iopte ;


 int iopte_to_paddr (int ,int,int *) ;
 int * phys_to_virt (int ) ;

__attribute__((used)) static arm_v7s_iopte *iopte_deref(arm_v7s_iopte pte, int lvl,
      struct arm_v7s_io_pgtable *data)
{
 return phys_to_virt(iopte_to_paddr(pte, lvl, &data->iop.cfg));
}
