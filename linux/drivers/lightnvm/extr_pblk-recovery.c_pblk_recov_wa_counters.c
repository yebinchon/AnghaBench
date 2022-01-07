
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct wa_counters {int gc; int pad; int user; } ;
struct pblk_line_meta {int dummy; } ;
struct pblk {void* gc_rst_wa; void* pad_rst_wa; void* user_rst_wa; int gc_wa; int pad_wa; int user_wa; struct pblk_line_meta lm; } ;
struct line_header {scalar_t__ version_major; int version_minor; } ;
struct line_emeta {struct line_header header; } ;


 int atomic64_set (int *,void*) ;
 struct wa_counters* emeta_to_wa (struct pblk_line_meta*,struct line_emeta*) ;
 void* le64_to_cpu (int ) ;

__attribute__((used)) static void pblk_recov_wa_counters(struct pblk *pblk,
       struct line_emeta *emeta)
{
 struct pblk_line_meta *lm = &pblk->lm;
 struct line_header *header = &emeta->header;
 struct wa_counters *wa = emeta_to_wa(lm, emeta);


 if (header->version_major > 0 || header->version_minor >= 2) {
  u64 user = le64_to_cpu(wa->user);
  u64 pad = le64_to_cpu(wa->pad);
  u64 gc = le64_to_cpu(wa->gc);

  atomic64_set(&pblk->user_wa, user);
  atomic64_set(&pblk->pad_wa, pad);
  atomic64_set(&pblk->gc_wa, gc);

  pblk->user_rst_wa = user;
  pblk->pad_rst_wa = pad;
  pblk->gc_rst_wa = gc;
 }
}
