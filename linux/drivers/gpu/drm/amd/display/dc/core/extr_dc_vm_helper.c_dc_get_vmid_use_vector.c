
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc {TYPE_2__* vm_helper; } ;
struct TYPE_4__ {int num_vmid; TYPE_1__* hubp_vmid_usage; } ;
struct TYPE_3__ {int* vmid_usage; } ;



int dc_get_vmid_use_vector(struct dc *dc)
{
 int i;
 int in_use = 0;

 for (i = 0; i < dc->vm_helper->num_vmid; i++)
  in_use |= dc->vm_helper->hubp_vmid_usage[i].vmid_usage[0]
   | dc->vm_helper->hubp_vmid_usage[i].vmid_usage[1];
 return in_use;
}
