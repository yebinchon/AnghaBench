
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int nr_free_lines; int free_list; int bad_list; int * vsc_list; } ;
struct pblk_line_meta {long blk_per_line; long min_blk_line; } ;
struct pblk_line {int id; int list; int blk_in_line; int state; int lock; int * vsc; int gc_group; int type; struct pblk* pblk; } ;
struct pblk {struct pblk_line_meta lm; struct pblk_line_mgmt l_mg; } ;


 int PBLK_LINEGC_NONE ;
 int PBLK_LINESTATE_BAD ;
 int PBLK_LINESTATE_NEW ;
 int PBLK_LINETYPE_FREE ;
 int atomic_set (int *,long) ;
 int list_add_tail (int *,int *) ;
 long pblk_setup_line_meta_chk (struct pblk*,struct pblk_line*,void*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static long pblk_setup_line_meta(struct pblk *pblk, struct pblk_line *line,
     void *chunk_meta, int line_id)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_line_meta *lm = &pblk->lm;
 long nr_bad_chks, chk_in_line;

 line->pblk = pblk;
 line->id = line_id;
 line->type = PBLK_LINETYPE_FREE;
 line->state = PBLK_LINESTATE_NEW;
 line->gc_group = PBLK_LINEGC_NONE;
 line->vsc = &l_mg->vsc_list[line_id];
 spin_lock_init(&line->lock);

 nr_bad_chks = pblk_setup_line_meta_chk(pblk, line, chunk_meta);

 chk_in_line = lm->blk_per_line - nr_bad_chks;
 if (nr_bad_chks < 0 || nr_bad_chks > lm->blk_per_line ||
     chk_in_line < lm->min_blk_line) {
  line->state = PBLK_LINESTATE_BAD;
  list_add_tail(&line->list, &l_mg->bad_list);
  return 0;
 }

 atomic_set(&line->blk_in_line, chk_in_line);
 list_add_tail(&line->list, &l_mg->free_list);
 l_mg->nr_free_lines++;

 return chk_in_line;
}
