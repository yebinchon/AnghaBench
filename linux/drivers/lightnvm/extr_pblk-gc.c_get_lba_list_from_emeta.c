
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_meta {unsigned int* emeta_len; } ;
struct pblk_line {int id; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct line_emeta {int dummy; } ;
typedef int __le64 ;


 int GFP_KERNEL ;
 int emeta_to_lbas (struct pblk*,struct line_emeta*) ;
 int kvfree (struct line_emeta*) ;
 void* kvmalloc (unsigned int,int ) ;
 int memcpy (int *,int ,unsigned int) ;
 int pblk_err (struct pblk*,char*,int ,...) ;
 int pblk_line_emeta_read (struct pblk*,struct pblk_line*,struct line_emeta*) ;
 int pblk_recov_check_emeta (struct pblk*,struct line_emeta*) ;

__attribute__((used)) static __le64 *get_lba_list_from_emeta(struct pblk *pblk,
           struct pblk_line *line)
{
 struct line_emeta *emeta_buf;
 struct pblk_line_meta *lm = &pblk->lm;
 unsigned int lba_list_size = lm->emeta_len[2];
 __le64 *lba_list;
 int ret;

 emeta_buf = kvmalloc(lm->emeta_len[0], GFP_KERNEL);
 if (!emeta_buf)
  return ((void*)0);

 ret = pblk_line_emeta_read(pblk, line, emeta_buf);
 if (ret) {
  pblk_err(pblk, "line %d read emeta failed (%d)\n",
    line->id, ret);
  kvfree(emeta_buf);
  return ((void*)0);
 }







 ret = pblk_recov_check_emeta(pblk, emeta_buf);
 if (ret) {
  pblk_err(pblk, "inconsistent emeta (line %d)\n",
    line->id);
  kvfree(emeta_buf);
  return ((void*)0);
 }

 lba_list = kvmalloc(lba_list_size, GFP_KERNEL);

 if (lba_list)
  memcpy(lba_list, emeta_to_lbas(pblk, emeta_buf), lba_list_size);

 kvfree(emeta_buf);

 return lba_list;
}
