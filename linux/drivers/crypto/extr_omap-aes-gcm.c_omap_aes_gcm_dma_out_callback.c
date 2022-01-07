
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_aes_reqctx {scalar_t__ auth_tag; } ;
struct omap_aes_dev {int flags; TYPE_1__* aead_req; int authsize; scalar_t__ total; } ;
struct TYPE_2__ {scalar_t__ assoclen; int src; } ;


 int AES_REG_TAG_N (struct omap_aes_dev*,int) ;
 int FLAGS_ENCRYPT ;
 struct omap_aes_reqctx* aead_request_ctx (TYPE_1__*) ;
 int omap_aes_gcm_done_task (struct omap_aes_dev*) ;
 int omap_aes_read (struct omap_aes_dev*,int ) ;
 int scatterwalk_map_and_copy (int*,int ,scalar_t__,int ,int ) ;

void omap_aes_gcm_dma_out_callback(void *data)
{
 struct omap_aes_dev *dd = data;
 struct omap_aes_reqctx *rctx;
 int i, val;
 u32 *auth_tag, tag[4];

 if (!(dd->flags & FLAGS_ENCRYPT))
  scatterwalk_map_and_copy(tag, dd->aead_req->src,
      dd->total + dd->aead_req->assoclen,
      dd->authsize, 0);

 rctx = aead_request_ctx(dd->aead_req);
 auth_tag = (u32 *)rctx->auth_tag;
 for (i = 0; i < 4; i++) {
  val = omap_aes_read(dd, AES_REG_TAG_N(dd, i));
  auth_tag[i] = val ^ auth_tag[i];
  if (!(dd->flags & FLAGS_ENCRYPT))
   auth_tag[i] = auth_tag[i] ^ tag[i];
 }

 omap_aes_gcm_done_task(dd);
}
