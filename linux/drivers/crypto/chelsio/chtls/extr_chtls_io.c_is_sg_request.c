
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; scalar_t__ peeked; } ;


 scalar_t__ MAX_IMM_ULPTX_WR_LEN ;

__attribute__((used)) static bool is_sg_request(const struct sk_buff *skb)
{
 return skb->peeked ||
  (skb->len > MAX_IMM_ULPTX_WR_LEN);
}
