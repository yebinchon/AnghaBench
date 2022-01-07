
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_recv_wqe {int dummy; } ;
struct ib_sge {int dummy; } ;



__attribute__((used)) static inline int rcv_wqe_size(int max_sge)
{
 return sizeof(struct rxe_recv_wqe) +
  max_sge * sizeof(struct ib_sge);
}
