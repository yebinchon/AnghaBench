
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct rdma_nl_cbs {int doit; int dump; } ;
struct TYPE_2__ {int cb_table; int sem; } ;


 unsigned int RDMA_NL_NLDEV ;
 struct rdma_nl_cbs* READ_ONCE (int ) ;
 int down_read (int *) ;
 int init_net ;
 TYPE_1__* rdma_nl_types ;
 int request_module (char*,unsigned int) ;
 int * sock_net (int ) ;
 int up_read (int *) ;

__attribute__((used)) static const struct rdma_nl_cbs *
get_cb_table(const struct sk_buff *skb, unsigned int type, unsigned int op)
{
 const struct rdma_nl_cbs *cb_table;





 if (sock_net(skb->sk) != &init_net && type != RDMA_NL_NLDEV)
  return ((void*)0);

 cb_table = READ_ONCE(rdma_nl_types[type].cb_table);
 if (!cb_table) {




  up_read(&rdma_nl_types[type].sem);

  request_module("rdma-netlink-subsys-%d", type);

  down_read(&rdma_nl_types[type].sem);
  cb_table = READ_ONCE(rdma_nl_types[type].cb_table);
 }
 if (!cb_table || (!cb_table[op].dump && !cb_table[op].doit))
  return ((void*)0);
 return cb_table;
}
