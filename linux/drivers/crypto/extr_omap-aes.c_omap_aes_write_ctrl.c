
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct omap_aes_reqctx {scalar_t__ iv; } ;
struct omap_aes_dev {int flags; TYPE_2__* ctx; TYPE_3__* aead_req; TYPE_1__* req; } ;
struct TYPE_6__ {scalar_t__ iv; } ;
struct TYPE_5__ {int keylen; int * key; } ;
struct TYPE_4__ {int* info; } ;


 int AES_REG_CTRL (struct omap_aes_dev*) ;
 int AES_REG_CTRL_CBC ;
 int AES_REG_CTRL_CTR ;
 int AES_REG_CTRL_CTR_WIDTH_128 ;
 int AES_REG_CTRL_DIRECTION ;
 int AES_REG_CTRL_GCM ;
 int AES_REG_CTRL_MASK ;
 int AES_REG_IV (struct omap_aes_dev*,int ) ;
 int AES_REG_KEY (struct omap_aes_dev*,int) ;
 int FLAGS_CBC ;
 int FLAGS_CTR ;
 int FLAGS_ENCRYPT ;
 int FLAGS_GCM ;
 int FLD_VAL (int,int,int) ;
 int __le32_to_cpu (int ) ;
 struct omap_aes_reqctx* aead_request_ctx (TYPE_3__*) ;
 int omap_aes_hw_init (struct omap_aes_dev*) ;
 int omap_aes_write (struct omap_aes_dev*,int,int) ;
 int omap_aes_write_mask (struct omap_aes_dev*,int ,int,int ) ;
 int omap_aes_write_n (struct omap_aes_dev*,int ,int*,int) ;

int omap_aes_write_ctrl(struct omap_aes_dev *dd)
{
 struct omap_aes_reqctx *rctx;
 unsigned int key32;
 int i, err;
 u32 val;

 err = omap_aes_hw_init(dd);
 if (err)
  return err;

 key32 = dd->ctx->keylen / sizeof(u32);


 if (dd->flags & FLAGS_GCM)
  for (i = 0; i < 0x40; i = i + 4)
   omap_aes_write(dd, i, 0x0);

 for (i = 0; i < key32; i++) {
  omap_aes_write(dd, AES_REG_KEY(dd, i),
   __le32_to_cpu(dd->ctx->key[i]));
 }

 if ((dd->flags & (FLAGS_CBC | FLAGS_CTR)) && dd->req->info)
  omap_aes_write_n(dd, AES_REG_IV(dd, 0), dd->req->info, 4);

 if ((dd->flags & (FLAGS_GCM)) && dd->aead_req->iv) {
  rctx = aead_request_ctx(dd->aead_req);
  omap_aes_write_n(dd, AES_REG_IV(dd, 0), (u32 *)rctx->iv, 4);
 }

 val = FLD_VAL(((dd->ctx->keylen >> 3) - 1), 4, 3);
 if (dd->flags & FLAGS_CBC)
  val |= AES_REG_CTRL_CBC;

 if (dd->flags & (FLAGS_CTR | FLAGS_GCM))
  val |= AES_REG_CTRL_CTR | AES_REG_CTRL_CTR_WIDTH_128;

 if (dd->flags & FLAGS_GCM)
  val |= AES_REG_CTRL_GCM;

 if (dd->flags & FLAGS_ENCRYPT)
  val |= AES_REG_CTRL_DIRECTION;

 omap_aes_write_mask(dd, AES_REG_CTRL(dd), val, AES_REG_CTRL_MASK);

 return 0;
}
