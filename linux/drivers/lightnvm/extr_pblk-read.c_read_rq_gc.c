
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {int id; } ;
struct pblk {scalar_t__ capacity; int inflight_reads; int trans_lock; } ;
struct nvm_rq {struct ppa_addr ppa_addr; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ ADDR_EMPTY ;
 int WARN (int,char*) ;
 struct ppa_addr addr_to_gen_ppa (struct pblk*,int ,int ) ;
 int atomic_long_inc (int *) ;
 int pblk_ppa_comp (struct ppa_addr,struct ppa_addr) ;
 struct ppa_addr pblk_trans_map_get (struct pblk*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int read_rq_gc(struct pblk *pblk, struct nvm_rq *rqd,
        struct pblk_line *line, sector_t lba,
        u64 paddr_gc)
{
 struct ppa_addr ppa_l2p, ppa_gc;
 int valid_secs = 0;

 if (lba == ADDR_EMPTY)
  goto out;


 if (lba >= pblk->capacity) {
  WARN(1, "pblk: read lba out of bounds\n");
  goto out;
 }

 spin_lock(&pblk->trans_lock);
 ppa_l2p = pblk_trans_map_get(pblk, lba);
 spin_unlock(&pblk->trans_lock);

 ppa_gc = addr_to_gen_ppa(pblk, paddr_gc, line->id);
 if (!pblk_ppa_comp(ppa_l2p, ppa_gc))
  goto out;

 rqd->ppa_addr = ppa_l2p;
 valid_secs = 1;





out:
 return valid_secs;
}
