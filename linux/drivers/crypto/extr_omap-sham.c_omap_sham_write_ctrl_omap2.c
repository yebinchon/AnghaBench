
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_sham_reqctx {int flags; int digcnt; } ;
struct omap_sham_dev {int req; } ;


 int FLAGS_MODE_MASK ;
 int FLAGS_MODE_SHA1 ;
 int SHA_REG_CTRL ;
 int SHA_REG_CTRL_ALGO ;
 int SHA_REG_CTRL_ALGO_CONST ;
 int SHA_REG_CTRL_CLOSE_HASH ;
 int SHA_REG_CTRL_LENGTH ;
 int SHA_REG_DIGCNT (struct omap_sham_dev*) ;
 int SHA_REG_MASK (struct omap_sham_dev*) ;
 int SHA_REG_MASK_DMA_EN ;
 int SHA_REG_MASK_IT_EN ;
 struct omap_sham_reqctx* ahash_request_ctx (int ) ;
 scalar_t__ likely (int ) ;
 int omap_sham_write (struct omap_sham_dev*,int ,int ) ;
 int omap_sham_write_mask (struct omap_sham_dev*,int ,int,int) ;

__attribute__((used)) static void omap_sham_write_ctrl_omap2(struct omap_sham_dev *dd, size_t length,
     int final, int dma)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(dd->req);
 u32 val = length << 5, mask;

 if (likely(ctx->digcnt))
  omap_sham_write(dd, SHA_REG_DIGCNT(dd), ctx->digcnt);

 omap_sham_write_mask(dd, SHA_REG_MASK(dd),
  SHA_REG_MASK_IT_EN | (dma ? SHA_REG_MASK_DMA_EN : 0),
  SHA_REG_MASK_IT_EN | SHA_REG_MASK_DMA_EN);




 if ((ctx->flags & FLAGS_MODE_MASK) == FLAGS_MODE_SHA1)
  val |= SHA_REG_CTRL_ALGO;
 if (!ctx->digcnt)
  val |= SHA_REG_CTRL_ALGO_CONST;
 if (final)
  val |= SHA_REG_CTRL_CLOSE_HASH;

 mask = SHA_REG_CTRL_ALGO_CONST | SHA_REG_CTRL_CLOSE_HASH |
   SHA_REG_CTRL_ALGO | SHA_REG_CTRL_LENGTH;

 omap_sham_write_mask(dd, SHA_REG_CTRL, val, mask);
}
