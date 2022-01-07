
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct chtls_dev {TYPE_1__* askb; } ;
struct TYPE_4__ {int len; int data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* alloc_skb (int,int ) ;
 int memset (int ,int ,int ) ;
 int skb_put (TYPE_1__*,int) ;
 int skb_reset_transport_header (TYPE_1__*) ;

__attribute__((used)) static int chtls_get_skb(struct chtls_dev *cdev)
{
 cdev->askb = alloc_skb(sizeof(struct tcphdr), GFP_KERNEL);
 if (!cdev->askb)
  return -ENOMEM;

 skb_put(cdev->askb, sizeof(struct tcphdr));
 skb_reset_transport_header(cdev->askb);
 memset(cdev->askb->data, 0, cdev->askb->len);
 return 0;
}
