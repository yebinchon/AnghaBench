
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int fw_is_running; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;


 int EINVAL ;
 int IN_MSG_END_BRIDGE_APB_RW ;
 int OUT_MSG_BRIDGE_APB_W ;
 int dib9000_mbx_get_message_attr (struct dib9000_state*,int ,int*,int*,int) ;
 int dib9000_mbx_send_attr (struct dib9000_state*,int ,int*,int,int) ;

__attribute__((used)) static int dib9000_risc_apb_access_write(struct dib9000_state *state, u32 address, u16 attribute, const u8 * b, u32 len)
{
 u16 mb[10];
 u8 s, i;

 if (address >= 1024 || !state->platform.risc.fw_is_running)
  return -EINVAL;

 if (len > 18)
  return -EINVAL;



 mb[0] = (u16)address;
 for (i = 0; i + 1 < len; i += 2)
  mb[1 + i / 2] = b[i] << 8 | b[i + 1];
 if (len & 1)
  mb[1 + len / 2] = b[len - 1] << 8;

 dib9000_mbx_send_attr(state, OUT_MSG_BRIDGE_APB_W, mb, (3 + len) / 2, attribute);
 return dib9000_mbx_get_message_attr(state, IN_MSG_END_BRIDGE_APB_RW, mb, &s, attribute) == 1 ? 0 : -EINVAL;
}
