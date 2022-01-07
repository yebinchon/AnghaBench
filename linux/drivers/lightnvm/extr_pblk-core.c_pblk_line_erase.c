
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int blk; } ;
struct ppa_addr {TYPE_2__ a; } ;
struct pblk_line_meta {int blk_per_line; } ;
struct pblk_line {int id; int lock; int erase_bitmap; int left_eblks; } ;
struct pblk {TYPE_1__* luns; struct pblk_line_meta lm; } ;
struct TYPE_3__ {struct ppa_addr bppa; } ;


 int WARN_ON (int ) ;
 int atomic_dec (int *) ;
 int find_next_zero_bit (int ,int,int) ;
 int pblk_blk_erase_sync (struct pblk*,struct ppa_addr) ;
 int pblk_err (struct pblk*,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int,int ) ;

int pblk_line_erase(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_meta *lm = &pblk->lm;
 struct ppa_addr ppa;
 int ret, bit = -1;


 do {
  spin_lock(&line->lock);
  bit = find_next_zero_bit(line->erase_bitmap, lm->blk_per_line,
        bit + 1);
  if (bit >= lm->blk_per_line) {
   spin_unlock(&line->lock);
   break;
  }

  ppa = pblk->luns[bit].bppa;
  ppa.a.blk = line->id;

  atomic_dec(&line->left_eblks);
  WARN_ON(test_and_set_bit(bit, line->erase_bitmap));
  spin_unlock(&line->lock);

  ret = pblk_blk_erase_sync(pblk, ppa);
  if (ret) {
   pblk_err(pblk, "failed to erase line %d\n", line->id);
   return ret;
  }
 } while (1);

 return 0;
}
