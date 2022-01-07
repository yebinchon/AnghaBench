
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cpl_abort_rpl {int cmd; } ;


 int CPL_ABORT_RPL ;
 int INIT_TP_WR_CPL (struct cpl_abort_rpl*,int ,unsigned int) ;
 struct cpl_abort_rpl* cplhdr (struct sk_buff*) ;

__attribute__((used)) static void set_abort_rpl_wr(struct sk_buff *skb, unsigned int tid,
        int cmd)
{
 struct cpl_abort_rpl *rpl = cplhdr(skb);

 INIT_TP_WR_CPL(rpl, CPL_ABORT_RPL, tid);
 rpl->cmd = cmd;
}
