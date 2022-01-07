
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssi_protocol {int channel_id_data; } ;
struct sk_buff {int dummy; } ;
struct hsi_msg {struct sk_buff* context; int channel; int destructor; } ;
typedef int gfp_t ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;


 struct hsi_msg* hsi_alloc_msg (scalar_t__,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int ssip_free_data ;
 int ssip_skb_to_msg (struct sk_buff*,struct hsi_msg*) ;

__attribute__((used)) static struct hsi_msg *ssip_alloc_data(struct ssi_protocol *ssi,
     struct sk_buff *skb, gfp_t flags)
{
 struct hsi_msg *msg;

 msg = hsi_alloc_msg(skb_shinfo(skb)->nr_frags + 1, flags);
 if (!msg)
  return ((void*)0);
 ssip_skb_to_msg(skb, msg);
 msg->destructor = ssip_free_data;
 msg->channel = ssi->channel_id_data;
 msg->context = skb;

 return msg;
}
