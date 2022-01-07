
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_vsi {struct i40iw_puda_rsrc* ilq; } ;
struct i40iw_puda_rsrc {int dummy; } ;
struct i40iw_puda_buf {int refcount; } ;


 int atomic_dec_return (int *) ;
 int i40iw_puda_ret_bufpool (struct i40iw_puda_rsrc*,struct i40iw_puda_buf*) ;

void i40iw_free_sqbuf(struct i40iw_sc_vsi *vsi, void *bufp)
{
 struct i40iw_puda_buf *buf = (struct i40iw_puda_buf *)bufp;
 struct i40iw_puda_rsrc *ilq = vsi->ilq;

 if (!atomic_dec_return(&buf->refcount))
  i40iw_puda_ret_bufpool(ilq, buf);
}
