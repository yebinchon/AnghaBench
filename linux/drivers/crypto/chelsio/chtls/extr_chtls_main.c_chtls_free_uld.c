
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct chtls_dev {int askb; struct chtls_dev* lldi; int * rspq_skb_cache; int hwtid_idr; TYPE_1__ kmap; int tlsdev; } ;


 int RSPQ_HASH_BITS ;
 int idr_destroy (int *) ;
 int kfree (struct chtls_dev*) ;
 int kfree_skb (int ) ;
 int kvfree (int ) ;
 int tls_unregister_device (int *) ;

__attribute__((used)) static void chtls_free_uld(struct chtls_dev *cdev)
{
 int i;

 tls_unregister_device(&cdev->tlsdev);
 kvfree(cdev->kmap.addr);
 idr_destroy(&cdev->hwtid_idr);
 for (i = 0; i < (1 << RSPQ_HASH_BITS); i++)
  kfree_skb(cdev->rspq_skb_cache[i]);
 kfree(cdev->lldi);
 kfree_skb(cdev->askb);
 kfree(cdev);
}
