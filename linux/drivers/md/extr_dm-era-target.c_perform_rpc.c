
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc {int result; int complete; int list; } ;
struct era {int rpc_lock; int rpc_calls; } ;


 int init_completion (int *) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;
 int wake_worker (struct era*) ;

__attribute__((used)) static int perform_rpc(struct era *era, struct rpc *rpc)
{
 rpc->result = 0;
 init_completion(&rpc->complete);

 spin_lock(&era->rpc_lock);
 list_add(&rpc->list, &era->rpc_calls);
 spin_unlock(&era->rpc_lock);

 wake_worker(era);
 wait_for_completion(&rpc->complete);

 return rpc->result;
}
