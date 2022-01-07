
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40iw_cqp_request {int param; } ;


 int i40iw_send_syn (int ,int ) ;

__attribute__((used)) static void i40iw_send_syn_cqp_callback(struct i40iw_cqp_request *cqp_request, u32 send_ack)
{
 i40iw_send_syn(cqp_request->param, send_ack);
}
