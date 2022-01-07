
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int nr_lines; } ;
struct pblk_line {int dummy; } ;
struct pblk {struct pblk_line* lines; struct pblk_line* luns; struct pblk_line_mgmt l_mg; } ;


 int kfree (struct pblk_line*) ;
 int pblk_line_free (struct pblk_line*) ;
 int pblk_line_meta_free (struct pblk_line_mgmt*,struct pblk_line*) ;
 int pblk_line_mg_free (struct pblk*) ;

__attribute__((used)) static void pblk_lines_free(struct pblk *pblk)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_line *line;
 int i;

 for (i = 0; i < l_mg->nr_lines; i++) {
  line = &pblk->lines[i];

  pblk_line_free(line);
  pblk_line_meta_free(l_mg, line);
 }

 pblk_line_mg_free(pblk);

 kfree(pblk->luns);
 kfree(pblk->lines);
}
