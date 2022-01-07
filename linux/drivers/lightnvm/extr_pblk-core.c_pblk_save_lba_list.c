
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_w_err_gc {int lba_list; } ;
struct pblk_line_meta {unsigned int* emeta_len; } ;
struct pblk_line {struct pblk_emeta* emeta; struct pblk_w_err_gc* w_err_gc; } ;
struct pblk_emeta {int buf; } ;
struct pblk {struct pblk_line_meta lm; } ;


 int GFP_KERNEL ;
 int emeta_to_lbas (struct pblk*,int ) ;
 int kvmalloc (unsigned int,int ) ;
 int memcpy (int ,int ,unsigned int) ;

__attribute__((used)) static void pblk_save_lba_list(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_meta *lm = &pblk->lm;
 unsigned int lba_list_size = lm->emeta_len[2];
 struct pblk_w_err_gc *w_err_gc = line->w_err_gc;
 struct pblk_emeta *emeta = line->emeta;

 w_err_gc->lba_list = kvmalloc(lba_list_size, GFP_KERNEL);
 memcpy(w_err_gc->lba_list, emeta_to_lbas(pblk, emeta->buf),
    lba_list_size);
}
