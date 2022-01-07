
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct rvt_sge {scalar_t__ vaddr; scalar_t__ length; int sge_length; TYPE_1__* mr; } ;
struct ib_sge {scalar_t__ lkey; scalar_t__ addr; scalar_t__ length; } ;
struct TYPE_2__ {scalar_t__ lkey; scalar_t__ user_base; scalar_t__ length; } ;


 int trace_rvt_sge_adjacent (struct rvt_sge*,struct ib_sge*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool rvt_sge_adjacent(struct rvt_sge *last_sge,
        struct ib_sge *sge)
{
 if (last_sge && sge->lkey == last_sge->mr->lkey &&
     ((uint64_t)(last_sge->vaddr + last_sge->length) == sge->addr)) {
  if (sge->lkey) {
   if (unlikely((sge->addr - last_sge->mr->user_base +
         sge->length > last_sge->mr->length)))
    return 0;
  } else {
   last_sge->length += sge->length;
  }
  last_sge->sge_length += sge->length;
  trace_rvt_sge_adjacent(last_sge, sge);
  return 1;
 }
 return 0;
}
