
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct a6xx_hfi_msg_gmu_init_cmd {int boot_state; void* dbg_buffer_size; void* dbg_buffer_addr; int member_0; } ;
struct a6xx_gmu {TYPE_1__* debug; } ;
typedef int msg ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ iova; } ;


 int HFI_H2F_MSG_INIT ;
 int a6xx_hfi_send_msg (struct a6xx_gmu*,int ,struct a6xx_hfi_msg_gmu_init_cmd*,int,int *,int ) ;

__attribute__((used)) static int a6xx_hfi_send_gmu_init(struct a6xx_gmu *gmu, int boot_state)
{
 struct a6xx_hfi_msg_gmu_init_cmd msg = { 0 };

 msg.dbg_buffer_addr = (u32) gmu->debug->iova;
 msg.dbg_buffer_size = (u32) gmu->debug->size;
 msg.boot_state = boot_state;

 return a6xx_hfi_send_msg(gmu, HFI_H2F_MSG_INIT, &msg, sizeof(msg),
  ((void*)0), 0);
}
