
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct layer2 {int flag; } ;


 int FLG_MOD128 ;
 scalar_t__ l2addrsize (struct layer2*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
super_error(struct layer2 *l2, struct sk_buff *skb)
{
 if (skb->len != l2addrsize(l2) +
     (test_bit(FLG_MOD128, &l2->flag) ? 2 : 1))
  return 'N';
 return 0;
}
