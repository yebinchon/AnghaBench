
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ last; scalar_t__ first; } ;
struct mv_cesa_engine {TYPE_1__ chain; } ;


 int mv_cesa_std_process (struct mv_cesa_engine*,int ) ;
 int mv_cesa_tdma_process (struct mv_cesa_engine*,int ) ;

__attribute__((used)) static int mv_cesa_int_process(struct mv_cesa_engine *engine, u32 status)
{
 if (engine->chain.first && engine->chain.last)
  return mv_cesa_tdma_process(engine, status);

 return mv_cesa_std_process(engine, status);
}
