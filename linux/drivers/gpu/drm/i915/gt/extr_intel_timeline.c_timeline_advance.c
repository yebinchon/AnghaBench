
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_timeline {int seqno; int has_initial_breadcrumb; int pin_count; } ;


 int GEM_BUG_ON (int) ;
 int atomic_read (int *) ;

__attribute__((used)) static u32 timeline_advance(struct intel_timeline *tl)
{
 GEM_BUG_ON(!atomic_read(&tl->pin_count));
 GEM_BUG_ON(tl->seqno & tl->has_initial_breadcrumb);

 return tl->seqno += 1 + tl->has_initial_breadcrumb;
}
