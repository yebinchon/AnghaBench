
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh901318_desc {int node; } ;
struct coh901318_chan {int free; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
coh901318_desc_free(struct coh901318_chan *cohc, struct coh901318_desc *cohd)
{
 list_add_tail(&cohd->node, &cohc->free);
}
