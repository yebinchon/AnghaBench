
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct fwnet_peer {int pd_list; } ;
struct fwnet_partial_datagram {unsigned int datagram_size; unsigned int pbuf; int pd_link; int * skb; int datagram_label; int fi_list; } ;
struct fwnet_fragment_info {unsigned int datagram_size; unsigned int pbuf; int pd_link; int * skb; int datagram_label; int fi_list; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int LL_RESERVED_SPACE (struct net_device*) ;
 int * dev_alloc_skb (unsigned int) ;
 struct fwnet_partial_datagram* fwnet_frag_new (struct fwnet_partial_datagram*,unsigned int,unsigned int) ;
 int kfree (struct fwnet_partial_datagram*) ;
 struct fwnet_partial_datagram* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (unsigned int,void*,unsigned int) ;
 unsigned int skb_put (int *,unsigned int) ;
 int skb_reserve (int *,unsigned int) ;

__attribute__((used)) static struct fwnet_partial_datagram *fwnet_pd_new(struct net_device *net,
  struct fwnet_peer *peer, u16 datagram_label, unsigned dg_size,
  void *frag_buf, unsigned frag_off, unsigned frag_len)
{
 struct fwnet_partial_datagram *new;
 struct fwnet_fragment_info *fi;

 new = kmalloc(sizeof(*new), GFP_ATOMIC);
 if (!new)
  goto fail;

 INIT_LIST_HEAD(&new->fi_list);
 fi = fwnet_frag_new(new, frag_off, frag_len);
 if (fi == ((void*)0))
  goto fail_w_new;

 new->datagram_label = datagram_label;
 new->datagram_size = dg_size;
 new->skb = dev_alloc_skb(dg_size + LL_RESERVED_SPACE(net));
 if (new->skb == ((void*)0))
  goto fail_w_fi;

 skb_reserve(new->skb, LL_RESERVED_SPACE(net));
 new->pbuf = skb_put(new->skb, dg_size);
 memcpy(new->pbuf + frag_off, frag_buf, frag_len);
 list_add_tail(&new->pd_link, &peer->pd_list);

 return new;

fail_w_fi:
 kfree(fi);
fail_w_new:
 kfree(new);
fail:
 return ((void*)0);
}
