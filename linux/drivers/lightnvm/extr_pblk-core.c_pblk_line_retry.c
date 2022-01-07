
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int free_lock; struct pblk_line* data_line; } ;
struct pblk_line {int meta_line; int emeta; int smeta; int invalid_bitmap; int map_bitmap; } ;
struct pblk {int rl; struct pblk_line_mgmt l_mg; } ;


 scalar_t__ pblk_line_erase (struct pblk*,struct pblk_line*) ;
 struct pblk_line* pblk_line_get (struct pblk*) ;
 int pblk_line_reinit (struct pblk_line*) ;
 int pblk_rl_free_lines_dec (int *,struct pblk_line*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct pblk_line *pblk_line_retry(struct pblk *pblk,
      struct pblk_line *line)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_line *retry_line;

retry:
 spin_lock(&l_mg->free_lock);
 retry_line = pblk_line_get(pblk);
 if (!retry_line) {
  l_mg->data_line = ((void*)0);
  spin_unlock(&l_mg->free_lock);
  return ((void*)0);
 }

 retry_line->map_bitmap = line->map_bitmap;
 retry_line->invalid_bitmap = line->invalid_bitmap;
 retry_line->smeta = line->smeta;
 retry_line->emeta = line->emeta;
 retry_line->meta_line = line->meta_line;

 pblk_line_reinit(line);

 l_mg->data_line = retry_line;
 spin_unlock(&l_mg->free_lock);

 pblk_rl_free_lines_dec(&pblk->rl, line, 0);

 if (pblk_line_erase(pblk, retry_line))
  goto retry;

 return retry_line;
}
