
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int sg; int pos; } ;


 int rcar_i2c_dma_unmap (struct rcar_i2c_priv*) ;
 scalar_t__ sg_dma_len (int *) ;

__attribute__((used)) static void rcar_i2c_dma_callback(void *data)
{
 struct rcar_i2c_priv *priv = data;

 priv->pos += sg_dma_len(&priv->sg);

 rcar_i2c_dma_unmap(priv);
}
