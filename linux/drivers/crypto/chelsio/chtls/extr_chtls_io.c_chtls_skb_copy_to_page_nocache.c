
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_queued; } ;
struct sk_buff {int len; int data_len; int truesize; } ;
struct page {int dummy; } ;
struct iov_iter {int dummy; } ;


 scalar_t__ page_address (struct page*) ;
 int skb_do_copy_data_nocache (struct sock*,struct sk_buff*,struct iov_iter*,scalar_t__,int,int) ;

__attribute__((used)) static int chtls_skb_copy_to_page_nocache(struct sock *sk,
       struct iov_iter *from,
       struct sk_buff *skb,
       struct page *page,
       int off, int copy)
{
 int err;

 err = skb_do_copy_data_nocache(sk, skb, from, page_address(page) +
           off, copy, skb->len);
 if (err)
  return err;

 skb->len += copy;
 skb->data_len += copy;
 skb->truesize += copy;
 sk->sk_wmem_queued += copy;
 return 0;
}
