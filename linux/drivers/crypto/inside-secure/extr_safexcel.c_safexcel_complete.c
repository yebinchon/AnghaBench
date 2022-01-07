
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safexcel_crypto_priv {int dev; TYPE_1__* ring; } ;
struct safexcel_command_desc {int last_seg; } ;
struct TYPE_2__ {int cdr; } ;


 scalar_t__ IS_ERR (struct safexcel_command_desc*) ;
 int dev_err (int ,char*) ;
 struct safexcel_command_desc* safexcel_ring_next_rptr (struct safexcel_crypto_priv*,int *) ;

void safexcel_complete(struct safexcel_crypto_priv *priv, int ring)
{
 struct safexcel_command_desc *cdesc;


 do {
  cdesc = safexcel_ring_next_rptr(priv, &priv->ring[ring].cdr);
  if (IS_ERR(cdesc)) {
   dev_err(priv->dev,
    "Could not retrieve the command descriptor\n");
   return;
  }
 } while (!cdesc->last_seg);
}
