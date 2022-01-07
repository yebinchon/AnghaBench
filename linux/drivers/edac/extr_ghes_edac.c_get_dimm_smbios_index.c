
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mem_ctl_info {int tot_dimms; TYPE_1__** dimms; } ;
struct TYPE_4__ {struct mem_ctl_info* mci; } ;
struct TYPE_3__ {scalar_t__ smbios_handle; } ;


 TYPE_2__* ghes_pvt ;

__attribute__((used)) static int get_dimm_smbios_index(u16 handle)
{
 struct mem_ctl_info *mci = ghes_pvt->mci;
 int i;

 for (i = 0; i < mci->tot_dimms; i++) {
  if (mci->dimms[i]->smbios_handle == handle)
   return i;
 }
 return -1;
}
