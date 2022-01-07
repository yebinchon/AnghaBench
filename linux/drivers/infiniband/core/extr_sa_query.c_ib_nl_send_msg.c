
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct ib_sa_query {int seq; TYPE_1__* mad_buf; } ;
struct TYPE_4__ {int comp_mask; } ;
struct ib_sa_mad {TYPE_2__ sa_hdr; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct ib_sa_mad* mad; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int NLM_F_REQUEST ;
 int RDMA_NL_GROUP_LS ;
 int RDMA_NL_LS ;
 int RDMA_NL_LS_OP_RESOLVE ;
 int ib_nl_get_path_rec_attrs_len (int ) ;
 int ib_nl_set_path_rec_attrs (struct sk_buff*,struct ib_sa_query*) ;
 void* ibnl_put_msg (struct sk_buff*,struct nlmsghdr**,int ,int ,int ,int ,int ) ;
 int init_net ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 int rdma_nl_multicast (int *,struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ib_nl_send_msg(struct ib_sa_query *query, gfp_t gfp_mask)
{
 struct sk_buff *skb = ((void*)0);
 struct nlmsghdr *nlh;
 void *data;
 struct ib_sa_mad *mad;
 int len;

 mad = query->mad_buf->mad;
 len = ib_nl_get_path_rec_attrs_len(mad->sa_hdr.comp_mask);
 if (len <= 0)
  return -EMSGSIZE;

 skb = nlmsg_new(len, gfp_mask);
 if (!skb)
  return -ENOMEM;


 data = ibnl_put_msg(skb, &nlh, query->seq, 0, RDMA_NL_LS,
       RDMA_NL_LS_OP_RESOLVE, NLM_F_REQUEST);
 if (!data) {
  nlmsg_free(skb);
  return -EMSGSIZE;
 }


 ib_nl_set_path_rec_attrs(skb, query);


 nlmsg_end(skb, nlh);

 return rdma_nl_multicast(&init_net, skb, RDMA_NL_GROUP_LS, gfp_mask);
}
