
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_virtual_addr_space_config {int dummy; } ;
struct TYPE_2__ {int (* init_vm_ctx ) (int ,struct dc*,struct dc_virtual_addr_space_config*,int) ;} ;
struct dc {int hwseq; TYPE_1__ hwss; } ;


 int stub1 (int ,struct dc*,struct dc_virtual_addr_space_config*,int) ;

void dc_setup_vm_context(struct dc *dc, struct dc_virtual_addr_space_config *va_config, int vmid)
{
 dc->hwss.init_vm_ctx(dc->hwseq, dc, va_config, vmid);
}
