
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {int lock; int invalid_bitmap; int id; } ;
struct pblk {scalar_t__ capacity; int trans_lock; int rwb; } ;
typedef scalar_t__ sector_t ;


 int BUG_ON (int) ;
 int WARN (int,char*) ;
 struct ppa_addr addr_to_gen_ppa (struct pblk*,int ,int ) ;
 int pblk_addr_in_cache (struct ppa_addr) ;
 int pblk_addr_to_cacheline (struct ppa_addr) ;
 int pblk_ppa_comp (struct ppa_addr,struct ppa_addr) ;
 int pblk_rb_pos_oob (int *,int ) ;
 struct ppa_addr pblk_trans_map_get (struct pblk*,scalar_t__) ;
 int pblk_trans_map_set (struct pblk*,scalar_t__,struct ppa_addr) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int ) ;

int pblk_update_map_gc(struct pblk *pblk, sector_t lba, struct ppa_addr ppa_new,
         struct pblk_line *gc_line, u64 paddr_gc)
{
 struct ppa_addr ppa_l2p, ppa_gc;
 int ret = 1;
 if (!(lba < pblk->capacity)) {
  WARN(1, "pblk: corrupted L2P map request\n");
  return 0;
 }

 spin_lock(&pblk->trans_lock);
 ppa_l2p = pblk_trans_map_get(pblk, lba);
 ppa_gc = addr_to_gen_ppa(pblk, paddr_gc, gc_line->id);

 if (!pblk_ppa_comp(ppa_l2p, ppa_gc)) {
  spin_lock(&gc_line->lock);
  WARN(!test_bit(paddr_gc, gc_line->invalid_bitmap),
      "pblk: corrupted GC update");
  spin_unlock(&gc_line->lock);

  ret = 0;
  goto out;
 }

 pblk_trans_map_set(pblk, lba, ppa_new);
out:
 spin_unlock(&pblk->trans_lock);
 return ret;
}
