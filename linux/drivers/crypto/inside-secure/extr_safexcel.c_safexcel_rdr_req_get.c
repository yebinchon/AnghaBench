
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safexcel_crypto_priv {TYPE_1__* ring; } ;
struct crypto_async_request {int dummy; } ;
struct TYPE_2__ {struct crypto_async_request** rdr_req; } ;


 int safexcel_ring_first_rdr_index (struct safexcel_crypto_priv*,int) ;

inline struct crypto_async_request *
safexcel_rdr_req_get(struct safexcel_crypto_priv *priv, int ring)
{
 int i = safexcel_ring_first_rdr_index(priv, ring);

 return priv->ring[ring].rdr_req[i];
}
