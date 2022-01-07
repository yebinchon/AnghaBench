
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i40iw_sc_cqp {int dummy; } ;


 int * i40iw_sc_cqp_get_next_send_wqe_idx (struct i40iw_sc_cqp*,int ,int *) ;

u64 *i40iw_sc_cqp_get_next_send_wqe(struct i40iw_sc_cqp *cqp, u64 scratch)
{
 u32 wqe_idx;

 return i40iw_sc_cqp_get_next_send_wqe_idx(cqp, scratch, &wqe_idx);
}
