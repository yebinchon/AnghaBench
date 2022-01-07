
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rings; } ;
struct safexcel_crypto_priv {TYPE_1__ config; int ring_used; } ;


 int atomic_inc_return (int *) ;

inline int safexcel_select_ring(struct safexcel_crypto_priv *priv)
{
 return (atomic_inc_return(&priv->ring_used) % priv->config.rings);
}
