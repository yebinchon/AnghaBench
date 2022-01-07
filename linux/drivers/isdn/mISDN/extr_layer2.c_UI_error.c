
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; scalar_t__ len; } ;
struct layer2 {scalar_t__ maxlen; int flag; } ;


 int FLG_ORIG ;
 scalar_t__ l2addrsize (struct layer2*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
UI_error(struct layer2 *l2, struct sk_buff *skb)
{
 int rsp = *skb->data & 0x2;
 if (test_bit(FLG_ORIG, &l2->flag))
  rsp = !rsp;
 if (rsp)
  return 'L';
 if (skb->len > l2->maxlen + l2addrsize(l2) + 1)
  return 'O';
 return 0;
}
