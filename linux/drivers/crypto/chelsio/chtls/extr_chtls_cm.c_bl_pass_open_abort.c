
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int sk; } ;


 int pass_open_abort (int ,struct sock*,struct sk_buff*) ;

__attribute__((used)) static void bl_pass_open_abort(struct sock *lsk, struct sk_buff *skb)
{
 pass_open_abort(skb->sk, lsk, skb);
}
