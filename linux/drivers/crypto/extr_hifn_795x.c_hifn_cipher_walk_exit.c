
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;
struct hifn_cipher_walk {int num; struct scatterlist* cache; } ;


 int __free_page (int ) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void hifn_cipher_walk_exit(struct hifn_cipher_walk *w)
{
 int i;

 for (i = 0; i < w->num; ++i) {
  struct scatterlist *s = &w->cache[i];

  __free_page(sg_page(s));

  s->length = 0;
 }

 w->num = 0;
}
