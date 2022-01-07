
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx24120_state {int dummy; } ;
 int cx24120_msg_mpeg_output_global_config (struct cx24120_state*,int ) ;

__attribute__((used)) static void cx24120_check_cmd(struct cx24120_state *state, u8 id)
{
 switch (id) {
 case 128:
 case 134:
 case 132:
 case 131:
 case 129:
 case 130:
 case 133:
  cx24120_msg_mpeg_output_global_config(state, 0);

 default:
  return;
 }
}
