
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {scalar_t__ capacity; int trans_map; } ;
typedef scalar_t__ sector_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 int __GFP_HIGHMEM ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 int __vmalloc (size_t,int,int ) ;
 int pblk_err (struct pblk*,char*,size_t) ;
 int pblk_l2p_recover (struct pblk*,int) ;
 int pblk_ppa_set_empty (struct ppa_addr*) ;
 int pblk_trans_map_set (struct pblk*,scalar_t__,struct ppa_addr) ;
 size_t pblk_trans_map_size (struct pblk*) ;
 int vfree (int ) ;

__attribute__((used)) static int pblk_l2p_init(struct pblk *pblk, bool factory_init)
{
 sector_t i;
 struct ppa_addr ppa;
 size_t map_size;
 int ret = 0;

 map_size = pblk_trans_map_size(pblk);
 pblk->trans_map = __vmalloc(map_size, GFP_KERNEL | __GFP_NOWARN
     | __GFP_RETRY_MAYFAIL | __GFP_HIGHMEM,
     PAGE_KERNEL);
 if (!pblk->trans_map) {
  pblk_err(pblk, "failed to allocate L2P (need %zu of memory)\n",
    map_size);
  return -ENOMEM;
 }

 pblk_ppa_set_empty(&ppa);

 for (i = 0; i < pblk->capacity; i++)
  pblk_trans_map_set(pblk, i, ppa);

 ret = pblk_l2p_recover(pblk, factory_init);
 if (ret)
  vfree(pblk->trans_map);

 return ret;
}
