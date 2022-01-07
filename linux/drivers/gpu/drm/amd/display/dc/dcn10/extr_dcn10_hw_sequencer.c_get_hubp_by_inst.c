
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int pipe_count; struct hubp** hubps; } ;
struct hubp {int inst; } ;


 int ASSERT (int) ;

__attribute__((used)) static struct hubp *get_hubp_by_inst(struct resource_pool *res_pool, int mpcc_inst)
{
 int i;

 for (i = 0; i < res_pool->pipe_count; i++) {
  if (res_pool->hubps[i]->inst == mpcc_inst)
   return res_pool->hubps[i];
 }
 ASSERT(0);
 return ((void*)0);
}
