
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cpl_tid_release {int dummy; } ;


 int CPL_PRIORITY_SETUP ;
 int CPL_TID_RELEASE ;
 int INIT_TP_WR_CPL (struct cpl_tid_release*,int ,unsigned int) ;
 scalar_t__ __skb_put (struct sk_buff*,unsigned int) ;
 int memset (struct cpl_tid_release*,int ,unsigned int) ;
 unsigned int roundup (int,int) ;
 int set_wr_txq (struct sk_buff*,int ,unsigned int) ;

__attribute__((used)) static void mk_tid_release(struct sk_buff *skb,
       unsigned int chan, unsigned int tid)
{
 struct cpl_tid_release *req;
 unsigned int len;

 len = roundup(sizeof(struct cpl_tid_release), 16);
 req = (struct cpl_tid_release *)__skb_put(skb, len);
 memset(req, 0, len);
 set_wr_txq(skb, CPL_PRIORITY_SETUP, chan);
 INIT_TP_WR_CPL(req, CPL_TID_RELEASE, tid);
}
