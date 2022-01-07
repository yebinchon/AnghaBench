
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rb_node; } ;
struct TYPE_4__ {int node; int pfn_hi; int pfn_lo; } ;
struct iova_domain {unsigned long granule; unsigned long start_pfn; unsigned long dma_32bit_pfn; unsigned long max32_alloc_size; TYPE_2__ rbroot; TYPE_1__ anchor; int * fq; int * flush_cb; int * cached32_node; int * cached_node; int iova_rbtree_lock; } ;


 int BUG_ON (int) ;
 int IOVA_ANCHOR ;
 unsigned long PAGE_SIZE ;
 TYPE_2__ RB_ROOT ;
 int init_iova_rcaches (struct iova_domain*) ;
 int iova_shift (struct iova_domain*) ;
 int is_power_of_2 (unsigned long) ;
 int rb_insert_color (int *,TYPE_2__*) ;
 int rb_link_node (int *,int *,int *) ;
 int spin_lock_init (int *) ;

void
init_iova_domain(struct iova_domain *iovad, unsigned long granule,
 unsigned long start_pfn)
{





 BUG_ON((granule > PAGE_SIZE) || !is_power_of_2(granule));

 spin_lock_init(&iovad->iova_rbtree_lock);
 iovad->rbroot = RB_ROOT;
 iovad->cached_node = &iovad->anchor.node;
 iovad->cached32_node = &iovad->anchor.node;
 iovad->granule = granule;
 iovad->start_pfn = start_pfn;
 iovad->dma_32bit_pfn = 1UL << (32 - iova_shift(iovad));
 iovad->max32_alloc_size = iovad->dma_32bit_pfn;
 iovad->flush_cb = ((void*)0);
 iovad->fq = ((void*)0);
 iovad->anchor.pfn_lo = iovad->anchor.pfn_hi = IOVA_ANCHOR;
 rb_link_node(&iovad->anchor.node, ((void*)0), &iovad->rbroot.rb_node);
 rb_insert_color(&iovad->anchor.node, &iovad->rbroot);
 init_iova_rcaches(iovad);
}
