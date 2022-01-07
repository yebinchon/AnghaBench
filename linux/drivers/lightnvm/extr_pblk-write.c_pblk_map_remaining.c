
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {int lock; TYPE_2__* w_err_gc; int vsc; int invalid_bitmap; int nr_valid_lbas; int left_msecs; int map_bitmap; TYPE_1__* emeta; } ;
struct pblk {int dev; } ;
typedef scalar_t__ __le64 ;
struct TYPE_4__ {int has_write_err; } ;
struct TYPE_3__ {int buf; } ;


 int ADDR_EMPTY ;
 scalar_t__ cpu_to_le64 (int ) ;
 scalar_t__* emeta_to_lbas (struct pblk*,int ) ;
 int le32_add_cpu (int ,int) ;
 int nvm_next_ppa_in_chk (int ,struct ppa_addr*) ;
 size_t pblk_dev_ppa_to_line_addr (struct pblk*,struct ppa_addr) ;
 struct pblk_line* pblk_ppa_to_line (struct pblk*,struct ppa_addr) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (size_t,int ) ;

__attribute__((used)) static void pblk_map_remaining(struct pblk *pblk, struct ppa_addr *ppa,
  int rqd_ppas)
{
 struct pblk_line *line;
 struct ppa_addr map_ppa = *ppa;
 __le64 addr_empty = cpu_to_le64(ADDR_EMPTY);
 __le64 *lba_list;
 u64 paddr;
 int done = 0;
 int n = 0;

 line = pblk_ppa_to_line(pblk, *ppa);
 lba_list = emeta_to_lbas(pblk, line->emeta->buf);

 spin_lock(&line->lock);

 while (!done) {
  paddr = pblk_dev_ppa_to_line_addr(pblk, map_ppa);

  if (!test_and_set_bit(paddr, line->map_bitmap))
   line->left_msecs--;

  if (n < rqd_ppas && lba_list[paddr] != addr_empty)
   line->nr_valid_lbas--;

  lba_list[paddr] = addr_empty;

  if (!test_and_set_bit(paddr, line->invalid_bitmap))
   le32_add_cpu(line->vsc, -1);

  done = nvm_next_ppa_in_chk(pblk->dev, &map_ppa);

  n++;
 }

 line->w_err_gc->has_write_err = 1;
 spin_unlock(&line->lock);
}
