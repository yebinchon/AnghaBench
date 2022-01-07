
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_rdma_ch {int dummy; } ;
struct se_session {struct srpt_rdma_ch* fabric_sess_ptr; } ;


 int srpt_disconnect_ch_sync (struct srpt_rdma_ch*) ;

__attribute__((used)) static void srpt_close_session(struct se_session *se_sess)
{
 struct srpt_rdma_ch *ch = se_sess->fabric_sess_ptr;

 srpt_disconnect_ch_sync(ch);
}
