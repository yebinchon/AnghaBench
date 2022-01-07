
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union rdma_cqe {int dummy; } rdma_cqe ;
struct qedr_cq {union rdma_cqe* latest_cqe; } ;



__attribute__((used)) static union rdma_cqe *get_cqe(struct qedr_cq *cq)
{
 return cq->latest_cqe;
}
