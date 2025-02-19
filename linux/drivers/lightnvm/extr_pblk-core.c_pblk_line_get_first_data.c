
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_line_mgmt {int free_lock; TYPE_1__* data_next; int d_seq_nr; struct pblk_line* data_line; } ;
struct pblk_line {void* type; scalar_t__ seq_nr; } ;
struct pblk {int rl; int lm; struct pblk_line_mgmt l_mg; } ;
struct TYPE_2__ {void* type; scalar_t__ seq_nr; } ;


 void* PBLK_LINETYPE_DATA ;
 scalar_t__ pblk_line_alloc_bitmaps (struct pblk*,struct pblk_line*) ;
 scalar_t__ pblk_line_erase (struct pblk*,struct pblk_line*) ;
 void* pblk_line_get (struct pblk*) ;
 int pblk_line_init_bb (struct pblk*,struct pblk_line*,int) ;
 int pblk_line_init_metadata (struct pblk*,struct pblk_line*,int *) ;
 struct pblk_line* pblk_line_retry (struct pblk*,struct pblk_line*) ;
 int pblk_line_setup_metadata (struct pblk_line*,struct pblk_line_mgmt*,int *) ;
 int pblk_rl_free_lines_dec (int *,struct pblk_line*,int) ;
 int pblk_set_space_limit (struct pblk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct pblk_line *pblk_line_get_first_data(struct pblk *pblk)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_line *line;

 spin_lock(&l_mg->free_lock);
 line = pblk_line_get(pblk);
 if (!line) {
  spin_unlock(&l_mg->free_lock);
  return ((void*)0);
 }

 line->seq_nr = l_mg->d_seq_nr++;
 line->type = PBLK_LINETYPE_DATA;
 l_mg->data_line = line;

 pblk_line_setup_metadata(line, l_mg, &pblk->lm);


 l_mg->data_next = pblk_line_get(pblk);
 if (!l_mg->data_next) {




  pblk_set_space_limit(pblk);

  l_mg->data_next = ((void*)0);
 } else {
  l_mg->data_next->seq_nr = l_mg->d_seq_nr++;
  l_mg->data_next->type = PBLK_LINETYPE_DATA;
 }
 spin_unlock(&l_mg->free_lock);

 if (pblk_line_alloc_bitmaps(pblk, line))
  return ((void*)0);

 if (pblk_line_erase(pblk, line)) {
  line = pblk_line_retry(pblk, line);
  if (!line)
   return ((void*)0);
 }

retry_setup:
 if (!pblk_line_init_metadata(pblk, line, ((void*)0))) {
  line = pblk_line_retry(pblk, line);
  if (!line)
   return ((void*)0);

  goto retry_setup;
 }

 if (!pblk_line_init_bb(pblk, line, 1)) {
  line = pblk_line_retry(pblk, line);
  if (!line)
   return ((void*)0);

  goto retry_setup;
 }

 pblk_rl_free_lines_dec(&pblk->rl, line, 1);

 return line;
}
