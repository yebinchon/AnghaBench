
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safexcel_result_desc {int dummy; } ;
struct safexcel_crypto_priv {TYPE_1__* ring; } ;
struct crypto_async_request {int dummy; } ;
struct TYPE_2__ {struct crypto_async_request** rdr_req; } ;


 int safexcel_ring_rdr_rdesc_index (struct safexcel_crypto_priv*,int,struct safexcel_result_desc*) ;

inline void safexcel_rdr_req_set(struct safexcel_crypto_priv *priv,
     int ring,
     struct safexcel_result_desc *rdesc,
     struct crypto_async_request *req)
{
 int i = safexcel_ring_rdr_rdesc_index(priv, ring, rdesc);

 priv->ring[ring].rdr_req[i] = req;
}
