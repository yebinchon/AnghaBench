
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {unsigned long length; scalar_t__ offset; } ;
struct rnd_state {int dummy; } ;
struct TYPE_3__ {unsigned long nents; struct scatterlist* sgl; } ;
struct pfn_table {unsigned long start; unsigned long end; TYPE_1__ st; } ;
typedef unsigned long (* npages_fn_t ) (unsigned long,unsigned long,struct rnd_state*) ;


 int ENOSPC ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 unsigned long PAGE_SIZE ;
 unsigned long PFN_BIAS ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int overflows_type (unsigned long,unsigned long) ;
 int page_contiguous (int ,int ,unsigned long) ;
 unsigned long page_to_pfn (int ) ;
 int pfn_to_page (unsigned long) ;
 scalar_t__ sg_alloc_table (TYPE_1__*,unsigned long,int) ;
 int sg_free_table (TYPE_1__*) ;
 int sg_mark_end (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,unsigned long,int ) ;

__attribute__((used)) static int alloc_table(struct pfn_table *pt,
         unsigned long count, unsigned long max,
         npages_fn_t npages_fn,
         struct rnd_state *rnd,
         int alloc_error)
{
 struct scatterlist *sg;
 unsigned long n, pfn;

 if (sg_alloc_table(&pt->st, max,
      GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN))
  return alloc_error;


 GEM_BUG_ON(overflows_type(count * PAGE_SIZE, sg->length));





 pt->start = PFN_BIAS;
 pfn = pt->start;
 sg = pt->st.sgl;
 for (n = 0; n < count; n++) {
  unsigned long npages = npages_fn(n, count, rnd);


  if (!page_contiguous(pfn_to_page(pfn),
         pfn_to_page(pfn + npages),
         npages)) {
   sg_free_table(&pt->st);
   return -ENOSPC;
  }

  if (n)
   sg = sg_next(sg);
  sg_set_page(sg, pfn_to_page(pfn), npages * PAGE_SIZE, 0);

  GEM_BUG_ON(page_to_pfn(sg_page(sg)) != pfn);
  GEM_BUG_ON(sg->length != npages * PAGE_SIZE);
  GEM_BUG_ON(sg->offset != 0);

  pfn += npages;
 }
 sg_mark_end(sg);
 pt->st.nents = n;
 pt->end = pfn;

 return 0;
}
