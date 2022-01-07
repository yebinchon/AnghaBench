
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bchannel {int maxlen; int next_maxlen; int minlen; int next_minlen; int nr; scalar_t__ rx_skb; int Flags; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int FLG_TRANSPARENT ;
 int GFP_ATOMIC ;
 scalar_t__ mI_alloc_skb (int,int ) ;
 int pr_warning (char*,int ,int,...) ;
 int recv_Bchannel (struct bchannel*,int ,int) ;
 int skb_tailroom (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

int
bchannel_get_rxbuf(struct bchannel *bch, int reqlen)
{
 int len;

 if (bch->rx_skb) {
  len = skb_tailroom(bch->rx_skb);
  if (len < reqlen) {
   pr_warning("B%d no space for %d (only %d) bytes\n",
       bch->nr, reqlen, len);
   if (test_bit(FLG_TRANSPARENT, &bch->Flags)) {

    recv_Bchannel(bch, 0, 1);
   } else {

    return -EMSGSIZE;
   }
  } else {
   return len;
  }
 }

 if (unlikely(bch->maxlen != bch->next_maxlen))
  bch->maxlen = bch->next_maxlen;
 if (unlikely(bch->minlen != bch->next_minlen))
  bch->minlen = bch->next_minlen;
 if (unlikely(reqlen > bch->maxlen))
  return -EMSGSIZE;
 if (test_bit(FLG_TRANSPARENT, &bch->Flags)) {
  if (reqlen >= bch->minlen) {
   len = reqlen;
  } else {
   len = 2 * bch->minlen;
   if (len > bch->maxlen)
    len = bch->maxlen;
  }
 } else {

  len = bch->maxlen;
 }
 bch->rx_skb = mI_alloc_skb(len, GFP_ATOMIC);
 if (!bch->rx_skb) {
  pr_warning("B%d receive no memory for %d bytes\n",
      bch->nr, len);
  len = -ENOMEM;
 }
 return len;
}
