
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int recv_napi; } ;
struct ib_cq {int dummy; } ;


 int napi_schedule (int *) ;

void ipoib_ib_rx_completion(struct ib_cq *cq, void *ctx_ptr)
{
 struct ipoib_dev_priv *priv = ctx_ptr;

 napi_schedule(&priv->recv_napi);
}
