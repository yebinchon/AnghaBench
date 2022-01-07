
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int dummy; } ;
struct cma_work {int work; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cma_init_resolve_route_work (struct cma_work*,struct rdma_id_private*) ;
 int cma_wq ;
 struct cma_work* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int cma_resolve_iw_route(struct rdma_id_private *id_priv)
{
 struct cma_work *work;

 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (!work)
  return -ENOMEM;

 cma_init_resolve_route_work(work, id_priv);
 queue_work(cma_wq, &work->work);
 return 0;
}
