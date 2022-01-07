
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_puda_buf {int hdrlen; int ipv4; int tcphlen; int maclen; } ;


 int i40iw_ieq_copy_to_txbuf (struct i40iw_puda_buf*,struct i40iw_puda_buf*,int ,int ,int ) ;

__attribute__((used)) static void i40iw_ieq_setup_tx_buf(struct i40iw_puda_buf *buf,
       struct i40iw_puda_buf *txbuf)
{
 txbuf->maclen = buf->maclen;
 txbuf->tcphlen = buf->tcphlen;
 txbuf->ipv4 = buf->ipv4;
 txbuf->hdrlen = buf->hdrlen;
 i40iw_ieq_copy_to_txbuf(buf, txbuf, 0, 0, buf->hdrlen);
}
