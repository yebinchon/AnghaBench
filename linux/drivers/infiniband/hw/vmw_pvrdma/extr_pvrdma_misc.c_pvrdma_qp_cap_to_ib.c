
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvrdma_qp_cap {int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; } ;
struct ib_qp_cap {int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; } ;



void pvrdma_qp_cap_to_ib(struct ib_qp_cap *dst, const struct pvrdma_qp_cap *src)
{
 dst->max_send_wr = src->max_send_wr;
 dst->max_recv_wr = src->max_recv_wr;
 dst->max_send_sge = src->max_send_sge;
 dst->max_recv_sge = src->max_recv_sge;
 dst->max_inline_data = src->max_inline_data;
}
