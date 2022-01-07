
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int free_lock; struct pblk_line* data_next; int d_seq_nr; struct pblk_line* data_line; } ;
struct pblk_line {int type; scalar_t__ seq_nr; int left_eblks; int left_seblks; } ;
struct pblk {int rl; int lm; struct pblk_line_mgmt l_mg; } ;


 int PBLK_LINETYPE_DATA ;
 int atomic_read (int *) ;
 int io_schedule () ;
 scalar_t__ pblk_line_alloc_bitmaps (struct pblk*,struct pblk_line*) ;
 scalar_t__ pblk_line_erase (struct pblk*,struct pblk_line*) ;
 struct pblk_line* pblk_line_get (struct pblk*) ;
 int pblk_line_init_bb (struct pblk*,struct pblk_line*,int) ;
 int pblk_line_init_metadata (struct pblk*,struct pblk_line*,struct pblk_line*) ;
 struct pblk_line* pblk_line_retry (struct pblk*,struct pblk_line*) ;
 int pblk_line_setup_metadata (struct pblk_line*,struct pblk_line_mgmt*,int *) ;
 int pblk_rl_free_lines_dec (int *,struct pblk_line*,int) ;
 int pblk_stop_writes (struct pblk*,struct pblk_line*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct pblk_line *pblk_line_replace_data(struct pblk *pblk)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_line *cur, *new = ((void*)0);
 unsigned int left_seblks;

 new = l_mg->data_next;
 if (!new)
  goto out;

 spin_lock(&l_mg->free_lock);
 cur = l_mg->data_line;
 l_mg->data_line = new;

 pblk_line_setup_metadata(new, l_mg, &pblk->lm);
 spin_unlock(&l_mg->free_lock);

retry_erase:
 left_seblks = atomic_read(&new->left_seblks);
 if (left_seblks) {

  if (atomic_read(&new->left_eblks)) {
   if (pblk_line_erase(pblk, new))
    goto out;
  } else {
   io_schedule();
  }
  goto retry_erase;
 }

 if (pblk_line_alloc_bitmaps(pblk, new))
  return ((void*)0);

retry_setup:
 if (!pblk_line_init_metadata(pblk, new, cur)) {
  new = pblk_line_retry(pblk, new);
  if (!new)
   goto out;

  goto retry_setup;
 }

 if (!pblk_line_init_bb(pblk, new, 1)) {
  new = pblk_line_retry(pblk, new);
  if (!new)
   goto out;

  goto retry_setup;
 }

 pblk_rl_free_lines_dec(&pblk->rl, new, 1);


 spin_lock(&l_mg->free_lock);
 l_mg->data_next = pblk_line_get(pblk);
 if (!l_mg->data_next) {




  pblk_stop_writes(pblk, new);
  l_mg->data_next = ((void*)0);
 } else {
  l_mg->data_next->seq_nr = l_mg->d_seq_nr++;
  l_mg->data_next->type = PBLK_LINETYPE_DATA;
 }
 spin_unlock(&l_mg->free_lock);

out:
 return new;
}
