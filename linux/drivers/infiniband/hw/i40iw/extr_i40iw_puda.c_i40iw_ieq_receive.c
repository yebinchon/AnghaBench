
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40iw_sc_vsi {int dev; struct i40iw_puda_rsrc* ieq; } ;
struct i40iw_sc_qp {int dummy; } ;
struct i40iw_puda_rsrc {int rxq_invalid_cnt; int rx_wqe_idx; int stats_bad_qp_id; int compl_rxwqe_idx; } ;
struct i40iw_puda_buf {int dummy; } ;


 struct i40iw_sc_qp* i40iw_ieq_get_qp (int ,struct i40iw_puda_buf*) ;
 int i40iw_ieq_handle_exception (struct i40iw_puda_rsrc*,struct i40iw_sc_qp*,struct i40iw_puda_buf*) ;
 int i40iw_puda_ret_bufpool (struct i40iw_puda_rsrc*,struct i40iw_puda_buf*) ;

__attribute__((used)) static void i40iw_ieq_receive(struct i40iw_sc_vsi *vsi,
         struct i40iw_puda_buf *buf)
{
 struct i40iw_puda_rsrc *ieq = vsi->ieq;
 struct i40iw_sc_qp *qp = ((void*)0);
 u32 wqe_idx = ieq->compl_rxwqe_idx;

 qp = i40iw_ieq_get_qp(vsi->dev, buf);
 if (!qp) {
  ieq->stats_bad_qp_id++;
  i40iw_puda_ret_bufpool(ieq, buf);
 } else {
  i40iw_ieq_handle_exception(ieq, qp, buf);
 }




 if (!ieq->rxq_invalid_cnt)
  ieq->rx_wqe_idx = wqe_idx;
 ieq->rxq_invalid_cnt++;
}
