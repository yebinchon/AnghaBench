
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct efa_com_admin_queue {size_t comp_ctx_pool_next; int comp_ctx_lock; int * comp_ctx_pool; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u16 efa_com_alloc_ctx_id(struct efa_com_admin_queue *aq)
{
 u16 ctx_id;

 spin_lock(&aq->comp_ctx_lock);
 ctx_id = aq->comp_ctx_pool[aq->comp_ctx_pool_next];
 aq->comp_ctx_pool_next++;
 spin_unlock(&aq->comp_ctx_lock);

 return ctx_id;
}
