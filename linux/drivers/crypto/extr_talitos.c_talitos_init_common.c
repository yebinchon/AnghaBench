
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct talitos_private {int num_channels; int last_chan; } ;
struct talitos_ctx {int ch; int desc_hdr_template; int dev; } ;
struct TYPE_2__ {int desc_hdr_template; } ;
struct talitos_crypto_alg {TYPE_1__ algt; int dev; } ;


 int DESC_HDR_DONE_NOTIFY ;
 int atomic_inc_return (int *) ;
 struct talitos_private* dev_get_drvdata (int ) ;

__attribute__((used)) static int talitos_init_common(struct talitos_ctx *ctx,
          struct talitos_crypto_alg *talitos_alg)
{
 struct talitos_private *priv;


 ctx->dev = talitos_alg->dev;


 priv = dev_get_drvdata(ctx->dev);
 ctx->ch = atomic_inc_return(&priv->last_chan) &
    (priv->num_channels - 1);


 ctx->desc_hdr_template = talitos_alg->algt.desc_hdr_template;


 ctx->desc_hdr_template |= DESC_HDR_DONE_NOTIFY;

 return 0;
}
