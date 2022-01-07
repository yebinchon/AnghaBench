
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int* data; } ;
struct layer2 {int dummy; } ;


 size_t l2addrsize (struct layer2*) ;

inline u_char
get_PollFlag(struct layer2 *l2, struct sk_buff *skb)
{
 return skb->data[l2addrsize(l2)] & 0x10;
}
