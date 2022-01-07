
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {scalar_t__ has_initial_breadcrumb; int seqno; } ;



__attribute__((used)) static void timeline_rollback(struct intel_timeline *tl)
{
 tl->seqno -= 1 + tl->has_initial_breadcrumb;
}
