
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pl330_xfer {int bytes; } ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {int ccr; TYPE_1__* desc; } ;
struct TYPE_2__ {struct pl330_xfer px; } ;


 int BRST_SIZE (int ) ;
 int BURST_TO_BYTE (unsigned long,int ) ;
 unsigned long BYTE_TO_BURST (int,int ) ;
 scalar_t__ _dregs (struct pl330_dmac*,unsigned int,int *,struct _xfer_spec const*,int) ;
 scalar_t__ _loop (struct pl330_dmac*,unsigned int,int *,unsigned long*,struct _xfer_spec const*) ;

__attribute__((used)) static inline int _setup_loops(struct pl330_dmac *pl330,
          unsigned dry_run, u8 buf[],
          const struct _xfer_spec *pxs)
{
 struct pl330_xfer *x = &pxs->desc->px;
 u32 ccr = pxs->ccr;
 unsigned long c, bursts = BYTE_TO_BURST(x->bytes, ccr);
 int num_dregs = (x->bytes - BURST_TO_BYTE(bursts, ccr)) /
  BRST_SIZE(ccr);
 int off = 0;

 while (bursts) {
  c = bursts;
  off += _loop(pl330, dry_run, &buf[off], &c, pxs);
  bursts -= c;
 }
 off += _dregs(pl330, dry_run, &buf[off], pxs, num_dregs);

 return off;
}
