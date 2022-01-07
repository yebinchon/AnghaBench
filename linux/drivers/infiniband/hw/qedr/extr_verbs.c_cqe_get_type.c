
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cqe_requester {int flags; } ;
union rdma_cqe {struct rdma_cqe_requester req; } ;
typedef enum rdma_cqe_type { ____Placeholder_rdma_cqe_type } rdma_cqe_type ;


 int GET_FIELD (int ,int ) ;
 int RDMA_CQE_REQUESTER_TYPE ;

__attribute__((used)) static enum rdma_cqe_type cqe_get_type(union rdma_cqe *cqe)
{
 struct rdma_cqe_requester *resp_cqe = &cqe->req;

 return GET_FIELD(resp_cqe->flags, RDMA_CQE_REQUESTER_TYPE);
}
