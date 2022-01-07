
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct c4iw_ep {TYPE_1__* parent_ep; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_2__ {int com; } ;


 int c4iw_put_ep (int *) ;
 int release_ep_resources (struct c4iw_ep*) ;

__attribute__((used)) static int _put_pass_ep_safe(struct c4iw_dev *dev, struct sk_buff *skb)
{
 struct c4iw_ep *ep;

 ep = *((struct c4iw_ep **)(skb->cb + 2 * sizeof(void *)));
 c4iw_put_ep(&ep->parent_ep->com);
 release_ep_resources(ep);
 return 0;
}
