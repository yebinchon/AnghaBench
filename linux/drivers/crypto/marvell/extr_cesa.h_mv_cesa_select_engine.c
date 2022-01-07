
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mv_cesa_engine {int load; } ;
struct TYPE_4__ {struct mv_cesa_engine* engines; TYPE_1__* caps; } ;
struct TYPE_3__ {int nengines; } ;


 scalar_t__ U32_MAX ;
 int atomic_add (int,int *) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_2__* cesa_dev ;

__attribute__((used)) static inline struct mv_cesa_engine *mv_cesa_select_engine(int weight)
{
 int i;
 u32 min_load = U32_MAX;
 struct mv_cesa_engine *selected = ((void*)0);

 for (i = 0; i < cesa_dev->caps->nengines; i++) {
  struct mv_cesa_engine *engine = cesa_dev->engines + i;
  u32 load = atomic_read(&engine->load);
  if (load < min_load) {
   min_load = load;
   selected = engine;
  }
 }

 atomic_add(weight, &selected->load);

 return selected;
}
