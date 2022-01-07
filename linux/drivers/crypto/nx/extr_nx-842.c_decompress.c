
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u16 ;
struct nx842_crypto_param {unsigned int oremain; scalar_t__ iremain; int * out; int * in; } ;
struct nx842_crypto_header_group {int compressed_length; int padding; int uncompressed_length; } ;
struct nx842_crypto_ctx {int * dbounce; int wmem; TYPE_1__* driver; int * sbounce; } ;
struct nx842_constraints {unsigned int multiple; unsigned int minimum; unsigned int maximum; int alignment; } ;
typedef int ktime_t ;
struct TYPE_2__ {int (* decompress ) (int *,unsigned int,int *,unsigned int*,int ) ;} ;


 unsigned int BOUNCE_BUFFER_SIZE ;
 int DECOMP_BUSY_TIMEOUT ;
 int EBUSY ;
 int EINVAL ;
 int ENOSPC ;
 int EOVERFLOW ;
 scalar_t__ be16_to_cpu (int ) ;
 unsigned int be32_to_cpu (int ) ;
 int ktime_add_ms (int ,int ) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 int memcpy (int *,int *,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int pr_debug (char*,unsigned int,...) ;
 int pr_info_ratelimited (char*) ;
 unsigned int round_down (unsigned int,unsigned int) ;
 unsigned int round_up (unsigned int,unsigned int) ;
 int stub1 (int *,unsigned int,int *,unsigned int*,int ) ;
 int sw842_decompress (int *,unsigned int,int *,unsigned int*) ;
 int update_param (struct nx842_crypto_param*,scalar_t__,unsigned int) ;

__attribute__((used)) static int decompress(struct nx842_crypto_ctx *ctx,
        struct nx842_crypto_param *p,
        struct nx842_crypto_header_group *g,
        struct nx842_constraints *c,
        u16 ignore)
{
 unsigned int slen = be32_to_cpu(g->compressed_length);
 unsigned int required_len = be32_to_cpu(g->uncompressed_length);
 unsigned int dlen = p->oremain, tmplen;
 unsigned int adj_slen = slen;
 u8 *src = p->in, *dst = p->out;
 u16 padding = be16_to_cpu(g->padding);
 int ret, spadding = 0;
 ktime_t timeout;

 if (!slen || !required_len)
  return -EINVAL;

 if (p->iremain <= 0 || padding + slen > p->iremain)
  return -EOVERFLOW;

 if (p->oremain <= 0 || required_len - ignore > p->oremain)
  return -ENOSPC;

 src += padding;

 if (slen % c->multiple)
  adj_slen = round_up(slen, c->multiple);
 if (slen < c->minimum)
  adj_slen = c->minimum;
 if (slen > c->maximum)
  goto usesw;
 if (slen < adj_slen || (u64)src % c->alignment) {




  if (slen < adj_slen)
   memset(ctx->sbounce + slen, 0, adj_slen - slen);
  memcpy(ctx->sbounce, src, slen);
  src = ctx->sbounce;
  spadding = adj_slen - slen;
  slen = adj_slen;
  pr_debug("using decomp sbounce buffer, len %x\n", slen);
 }

 if (dlen % c->multiple)
  dlen = round_down(dlen, c->multiple);
 if (dlen < required_len || (u64)dst % c->alignment) {
  dst = ctx->dbounce;
  dlen = min(required_len, BOUNCE_BUFFER_SIZE);
  pr_debug("using decomp dbounce buffer, len %x\n", dlen);
 }
 if (dlen < c->minimum)
  goto usesw;
 if (dlen > c->maximum)
  dlen = c->maximum;

 tmplen = dlen;
 timeout = ktime_add_ms(ktime_get(), DECOMP_BUSY_TIMEOUT);
 do {
  dlen = tmplen;
  ret = ctx->driver->decompress(src, slen, dst, &dlen, ctx->wmem);
 } while (ret == -EBUSY && ktime_before(ktime_get(), timeout));
 if (ret) {
usesw:

  src = p->in + padding;
  slen = be32_to_cpu(g->compressed_length);
  spadding = 0;
  dst = p->out;
  dlen = p->oremain;
  if (dlen < required_len) {
   dst = ctx->dbounce;
   dlen = BOUNCE_BUFFER_SIZE;
  }
  pr_info_ratelimited("using software 842 decompression\n");
  ret = sw842_decompress(src, slen, dst, &dlen);
 }
 if (ret)
  return ret;

 slen -= spadding;

 dlen -= ignore;
 if (ignore)
  pr_debug("ignoring last %x bytes\n", ignore);

 if (dst == ctx->dbounce)
  memcpy(p->out, dst, dlen);

 pr_debug("decompress slen %x padding %x dlen %x ignore %x\n",
   slen, padding, dlen, ignore);

 return update_param(p, slen + padding, dlen);
}
