
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_vsi {struct i40iw_puda_rsrc* ieq; } ;
struct i40iw_puda_rsrc {int dummy; } ;
struct i40iw_puda_buf {int dummy; } ;


 int i40iw_puda_ret_bufpool (struct i40iw_puda_rsrc*,struct i40iw_puda_buf*) ;

__attribute__((used)) static void i40iw_ieq_tx_compl(struct i40iw_sc_vsi *vsi, void *sqwrid)
{
 struct i40iw_puda_rsrc *ieq = vsi->ieq;
 struct i40iw_puda_buf *buf = (struct i40iw_puda_buf *)sqwrid;

 i40iw_puda_ret_bufpool(ieq, buf);
}
