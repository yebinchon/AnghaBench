
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef unsigned int u16 ;
struct nx842_crypto_param {unsigned int iremain; unsigned int oremain; int * out; int * in; } ;
struct nx842_crypto_header_group {void* uncompressed_length; void* compressed_length; int padding; } ;
struct nx842_crypto_ctx {int * dbounce; int wmem; TYPE_1__* driver; int * sbounce; } ;
struct nx842_constraints {unsigned int minimum; unsigned int multiple; unsigned int maximum; int alignment; } ;
typedef int ktime_t ;
struct TYPE_2__ {int (* compress ) (int *,unsigned int,int *,unsigned int*,int ) ;} ;


 int BOUNCE_BUFFER_SIZE ;
 int COMP_BUSY_TIMEOUT ;
 int EBUSY ;
 int ENOSPC ;
 int EOVERFLOW ;
 int * PTR_ALIGN (int *,int) ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (unsigned int) ;
 int ktime_add_ms (int ,int ) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 int memcpy (int *,int *,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 unsigned int min (unsigned int,int ) ;
 int pr_debug (char*,unsigned int,...) ;
 unsigned int round_down (unsigned int,unsigned int) ;
 unsigned int round_up (unsigned int,unsigned int) ;
 int stub1 (int *,unsigned int,int *,unsigned int*,int ) ;
 int update_param (struct nx842_crypto_param*,unsigned int,int) ;

__attribute__((used)) static int compress(struct nx842_crypto_ctx *ctx,
      struct nx842_crypto_param *p,
      struct nx842_crypto_header_group *g,
      struct nx842_constraints *c,
      u16 *ignore,
      unsigned int hdrsize)
{
 unsigned int slen = p->iremain, dlen = p->oremain, tmplen;
 unsigned int adj_slen = slen;
 u8 *src = p->in, *dst = p->out;
 int ret, dskip = 0;
 ktime_t timeout;

 if (p->iremain == 0)
  return -EOVERFLOW;

 if (p->oremain == 0 || hdrsize + c->minimum > dlen)
  return -ENOSPC;

 if (slen % c->multiple)
  adj_slen = round_up(slen, c->multiple);
 if (slen < c->minimum)
  adj_slen = c->minimum;
 if (slen > c->maximum)
  adj_slen = slen = c->maximum;
 if (adj_slen > slen || (u64)src % c->alignment) {
  adj_slen = min(adj_slen, BOUNCE_BUFFER_SIZE);
  slen = min(slen, BOUNCE_BUFFER_SIZE);
  if (adj_slen > slen)
   memset(ctx->sbounce + slen, 0, adj_slen - slen);
  memcpy(ctx->sbounce, src, slen);
  src = ctx->sbounce;
  slen = adj_slen;
  pr_debug("using comp sbounce buffer, len %x\n", slen);
 }

 dst += hdrsize;
 dlen -= hdrsize;

 if ((u64)dst % c->alignment) {
  dskip = (int)(PTR_ALIGN(dst, c->alignment) - dst);
  dst += dskip;
  dlen -= dskip;
 }
 if (dlen % c->multiple)
  dlen = round_down(dlen, c->multiple);
 if (dlen < c->minimum) {
nospc:
  dst = ctx->dbounce;
  dlen = min(p->oremain, BOUNCE_BUFFER_SIZE);
  dlen = round_down(dlen, c->multiple);
  dskip = 0;
  pr_debug("using comp dbounce buffer, len %x\n", dlen);
 }
 if (dlen > c->maximum)
  dlen = c->maximum;

 tmplen = dlen;
 timeout = ktime_add_ms(ktime_get(), COMP_BUSY_TIMEOUT);
 do {
  dlen = tmplen;
  ret = ctx->driver->compress(src, slen, dst, &dlen, ctx->wmem);



  if (ret == -ENOSPC && dst != ctx->dbounce)
   goto nospc;
 } while (ret == -EBUSY && ktime_before(ktime_get(), timeout));
 if (ret)
  return ret;

 dskip += hdrsize;

 if (dst == ctx->dbounce)
  memcpy(p->out + dskip, dst, dlen);

 g->padding = cpu_to_be16(dskip);
 g->compressed_length = cpu_to_be32(dlen);
 g->uncompressed_length = cpu_to_be32(slen);

 if (p->iremain < slen) {
  *ignore = slen - p->iremain;
  slen = p->iremain;
 }

 pr_debug("compress slen %x ignore %x dlen %x padding %x\n",
   slen, *ignore, dlen, dskip);

 return update_param(p, slen, dskip + dlen);
}
