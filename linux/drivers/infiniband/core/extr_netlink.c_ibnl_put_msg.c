
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;


 int RDMA_NL_GET_TYPE (int,int) ;
 void* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int,int ,int,int) ;

void *ibnl_put_msg(struct sk_buff *skb, struct nlmsghdr **nlh, int seq,
     int len, int client, int op, int flags)
{
 *nlh = nlmsg_put(skb, 0, seq, RDMA_NL_GET_TYPE(client, op), len, flags);
 if (!*nlh)
  return ((void*)0);
 return nlmsg_data(*nlh);
}
