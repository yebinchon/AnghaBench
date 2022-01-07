
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnet_packet_task {int skb; } ;


 int dev_kfree_skb_any (int ) ;
 int fwnet_packet_task_cache ;
 int kmem_cache_free (int ,struct fwnet_packet_task*) ;

__attribute__((used)) static void fwnet_free_ptask(struct fwnet_packet_task *ptask)
{
 dev_kfree_skb_any(ptask->skb);
 kmem_cache_free(fwnet_packet_task_cache, ptask);
}
