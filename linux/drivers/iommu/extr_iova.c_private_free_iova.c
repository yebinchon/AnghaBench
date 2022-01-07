
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int rbroot; int iova_rbtree_lock; } ;
struct iova {int node; } ;


 int __cached_rbnode_delete_update (struct iova_domain*,struct iova*) ;
 int assert_spin_locked (int *) ;
 int free_iova_mem (struct iova*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void private_free_iova(struct iova_domain *iovad, struct iova *iova)
{
 assert_spin_locked(&iovad->iova_rbtree_lock);
 __cached_rbnode_delete_update(iovad, iova);
 rb_erase(&iova->node, &iovad->rbroot);
 free_iova_mem(iova);
}
