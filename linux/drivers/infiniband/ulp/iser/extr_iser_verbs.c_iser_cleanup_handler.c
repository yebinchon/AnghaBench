
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {scalar_t__ context; } ;
struct iser_conn {int ib_completion; } ;


 int complete (int *) ;
 int iser_disconnected_handler (struct rdma_cm_id*) ;
 int iser_free_ib_conn_res (struct iser_conn*,int) ;

__attribute__((used)) static void iser_cleanup_handler(struct rdma_cm_id *cma_id,
     bool destroy)
{
 struct iser_conn *iser_conn = (struct iser_conn *)cma_id->context;






 iser_disconnected_handler(cma_id);
 iser_free_ib_conn_res(iser_conn, destroy);
 complete(&iser_conn->ib_completion);
}
