
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sahara_sha_reqctx {scalar_t__ last; scalar_t__ first; int mode; } ;
struct sahara_dev {int dummy; } ;


 int SAHARA_HDR_MDHA_INIT ;
 int SAHARA_HDR_MDHA_PDATA ;
 int SAHARA_HDR_MDHA_SET_MODE_HASH ;
 int SAHARA_HDR_MDHA_SET_MODE_MD_KEY ;
 int SAHARA_HDR_PARITY_BIT ;
 int hweight_long (int ) ;

__attribute__((used)) static u32 sahara_sha_init_hdr(struct sahara_dev *dev,
         struct sahara_sha_reqctx *rctx)
{
 u32 hdr = 0;

 hdr = rctx->mode;

 if (rctx->first) {
  hdr |= SAHARA_HDR_MDHA_SET_MODE_HASH;
  hdr |= SAHARA_HDR_MDHA_INIT;
 } else {
  hdr |= SAHARA_HDR_MDHA_SET_MODE_MD_KEY;
 }

 if (rctx->last)
  hdr |= SAHARA_HDR_MDHA_PDATA;

 if (hweight_long(hdr) % 2 == 0)
  hdr |= SAHARA_HDR_PARITY_BIT;

 return hdr;
}
